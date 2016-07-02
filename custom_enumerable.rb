class CustomEnumerable
  include Enumerable
  def initialize names
    @names = names
  end

  def each(&block)
    @names.each(&block)
  end
end


@names = CustomEnumerable.new(["hello","world","this","is","beautiful"])

@names.each do |name|
  puts name
end

puts "Names with length four\n\n"


name_four = @names.select{|name| name.length == 4}
puts name_four
