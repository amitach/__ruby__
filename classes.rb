p "a".class.class
class User
  def name
    'chinki'
  end
end
me = User.new
x = Class.new
x.instance_eval do 
  def hello
    p 'hello world'
  end
end
x.hello


me.instance_eval do 
  def blah
    'blah'
  end
end

User.instance_eval do 
  def woohoo
    'woohoo'
  end
end

p User.woohoo

User.class_eval do 
  def in_class
    "in instance of #{self.name}"
  end
end

p User.new.in_class

p me.blah


class User
end

User.class_eval do 
  def age 
    20
  end
end

User.instance_eval do 
  def gender 
    'male'
  end
end


u = User.new
p u.age

p User.gender