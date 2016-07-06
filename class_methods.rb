class MyClass
  def MyClass.some_method
    puts 'One way of defining self method'
  end

  def self.another_method
    puts 'Another way of defining self method'
  end
end

MyClass.some_method
MyClass.another_method
