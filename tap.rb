class User
  attr_accessor :a, :b, :c
end


  def fun
    u = User.new
    u.a = 'a'
    u.b = 'b'
    u.c = 'c'
    puts "#{u.a}, #{u.b}, #{u.c}"
  end

  def fun_with_tap
    u = User.new.tap do |u|
      u.a = 'a'
      u.b = 'b'
      u.c = 'c'
    end
    puts "#{u.a}, #{u.b}, #{u.c}"
  end

  puts fun
  puts fun_with_tap
