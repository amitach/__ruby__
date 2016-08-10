module FooBar
  refine String do
    def hello(name = '')
      puts "Hello, #{name}!"
    end
  end
end

class Bar
  using FooBar
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def say(name)
    user.hello(name)
  end

end

Bar.new("Amit").say("Acharya")



