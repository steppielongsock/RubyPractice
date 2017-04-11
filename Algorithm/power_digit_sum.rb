require "pry"

# https://projecteuler.net/problem=16
p (2 ** 1000)

# convert that number to an array 

p ( 2 ** 1000).to_s.split(//) #//regular expression - convert to string

# convert array back to int.

p ( 2 ** 1000).to_s.split(//).map(&:to_i) #map accepts a block we are passing in a method &: Says im passing a code block.


# add each element of the array together

p ( 2 ** 1000).to_s.split(//).map(&:to_i).inject(:+) # then we use inject method  #WE PASS A SYMBOL ???

# or
p ( 2 ** 1000).to_s.split(//).map(&:to_i).sum # both will do the same thing