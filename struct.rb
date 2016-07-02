Person = Struct.new(:name, :age)

class User < Person
  attr_accessor :name, :age
end

u      = User.new
u.name = 'Amit'
u.age = 28
p u.name
p u.age
