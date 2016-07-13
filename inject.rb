puts [1,2,3,4,5].inject(:+)

puts (5..10).inject {|sum, n| sum + n }

puts (5..10).inject {|product, n|
  product * n
}

array = [['a', 'A'], ['b','B']]

hash = array.inject({}) do |new_hash, (key, value)|
  new_hash[key] = value
  new_hash
end

puts hash


 puts "*" * 100
h = ['hello', 'world'].inject({}) do |new_hash, word|
  puts new_hash
  new_hash[word] = word
  puts word
  new_hash
end

puts  h
