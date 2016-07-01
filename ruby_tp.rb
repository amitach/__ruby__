module MyFunctionality
  def instance_meth
    "I am an instance method"
  end
  
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def class_meth
      "I am a class method"
    end
  end  
end

class MyClass
  include MyFunctionality
end

p MyClass.new.instance_meth
p MyClass.class_meth


