module DefineInstanceMethodsOnClass
  def self.included(klass)
    klass.extend ClassMethods
    klass.class_eval do
      define_method(:define_me_for) do |method_name|
        p "Defining for #{method_name}"
      end
    end
    klass.instance_eval do 
      def another_self_method
        p self.to_s + 'woo'
        p 'This is another self method'
      end
    end  
  end
  module ClassMethods
    def hello
      p 'hello classmethods'
    end
  end 
end

class HelloWorld
  include DefineInstanceMethodsOnClass
end




h = HelloWorld.new
h.define_me_for('blah')
HelloWorld.hello
HelloWorld.another_self_method
