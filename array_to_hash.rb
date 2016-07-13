array = [['a', 'A'], ['b','B']]
puts *array
puts *array.class
hash = Hash[*array.flatten]

h = Hash[1,2]
puts h
puts hash
