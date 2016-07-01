class Hello
  def self.add_new_method(name, &logic)
    send(:define_method,name) do |*args|
      logic.call(*args)
    end
  end
end

Hello.add_new_method('add_numbers') do |x, y|
  p x + y
end

Hello.new.add_numbers(1,2)