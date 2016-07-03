require 'httparty'
require 'awesome_print'

module MyRequester
  ROOT_ENDPOINT = 'https://api.github.com'
  class Request
    include HTTParty

    #initialized the base URL,
    #Since we are including the HTTParty module the base_uri method is available as a method on the eigen class
    def initialize
      self.class.base_uri(ROOT_ENDPOINT)
    end

    #To be used primarily for get requests
    def fetch(rest_of_the_url)
      request :get, "#{ROOT_ENDPOINT}#{@entity_name}/#{rest_of_the_url}"
    end

    #make the actual request
    def request(method, url, data = {})
      self.class.send(method, url, query: data)
    end
  end
end

ap MyRequester::Request.new.fetch('repos/amitach/zooki')
