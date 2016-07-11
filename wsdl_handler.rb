require 'savon'

module Kotak
  module WsdlHandler
    def self.included(klass)
      klass.include InstanceMethods
      klass.extend ClassMethods
    end


    module ClassMethods
      def call_and_rescue(client, *args, &block)
        client.call(*args, &block)
      rescue Savon::SOAPFault => e
        message = e.message
        Rails.logger.info "Client call failed: #{message}"
        raise Savon::SOAPFault, message
      end

      def prettify(source)
        doc = Nokogiri::XML source
        puts doc
      end
    end

    module InstanceMethods
      #[:TLSv1_2, :TLSv1_1, :TLSv1, :SSLv3, :SSLv23, :SSLv2]
      def initialize_client(client_url=nil, headers= {}, log_file = '')
        # wsdl = Rails.cache.fetch("#{client_url}", expires_in: 12.hours) do
          wsdl = Savon.client(
              # ssl_version: 'SSLv23'.to_sym,
              # ssl_cert_file: Rails.root.join("doc", "ibmuat2.kotak.com.cer").to_s,
              wsdl:                 client_url || GLOBAL_CONFIG['kotak_wsdl'],
              headers:              headers,
              env_namespace:        'kot',
              namespace_identifier: 'ns0',
              logger:               Logger.new("#{Rails.root}/log/kotak_wsdl.log", 1, (2097152*10))
          ) do
            convert_request_keys_to :camelcase
          end
        # end
        wsdl
      end

      def build_message(operation, &block)
        operations = self.operations
        message    = nil
        if operations.include?(operation)
          message = self.send("#{operation}_message", operation, &block)
        end
        message
      end

      def method_missing(method_name, *args, &block)
        operations = self.operations
        if(operations && operations.include?(args.first) && !self.respond_to?(method_name.to_sym))
          self.class_eval do
            define_method "#{method_name}".to_sym do
              if block_given?
                block.call
              else
                super
              end
            end
          end
          send(method_name)
        else
          super
        end
      end
    end
  end
end


