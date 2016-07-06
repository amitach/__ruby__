class SomeClass

end
sc = SomeClass.new

# @instance_var = SomeClass.new
# SomeClass.a_method
[SomeClass, String, Object, Class, IO, IOError, sc.class].each do |class_name|
  puts "#{class_name.to_s} => #{class_name.class}"
  puts "singleton methods => #{class_name.singleton_methods}"
  
end
