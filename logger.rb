module Logger
  extend self

  attr_accessor :output

  def log(&event)
    self.output ||= []
    event.call(output)
  end

  def play
    puts output.join("\n")
  end
end

class Thing
  def initialize(id)
    Logger.log { |output| output << "created a thing #{id}" }
  end
end

class Run

  def do_something
    1000.times { |i| Thing.new(i) }
  end
end


Run.new.do_something
Logger.play
