#!/usr/bin/env ruby
require "thor"

class MyThorCommand < Thor
  desc "foo", "Prints foo"
  def foo(name)
    puts "Hey #{name || 'foo'}, this is a command line example using thor"
  end
end

MyThorCommand.start
