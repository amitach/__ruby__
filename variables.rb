class SomeClass
  @@class_variable = 10

  def instance_method
    @instance_variable = 20
  end

  def self.class_method
    @instance_variable = 40
    # @instance_variable += 20 if @instance_variable
    # @instance_variable =15 if @instance_variable.nil?
  end
end
sc = SomeClass.new
sc.instance_method
puts "#{sc.instance_variable_get(:@instance_variable)}"
puts "#{@@class_variable}"
SomeClass.class_method

puts "#{sc.instance_variable_get(:@instance_variable)}"

# @instance_var = SomeClass.new
# SomeClass.a_method
# [SomeClass, String, Object, Class, IO, IOError, sc.class].each do |class_name|
#   puts "#{class_name.to_s} => #{class_name.class}"
#   puts "singleton methods => #{class_name.singleton_methods}"
# end
