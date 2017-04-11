# WHILE LOOPS

# i = 0

# while i < 10
#   puts "Hey There"
#   i+=1
# end

# Each loop each is a method

# arr = [23, 2343, 454, 123, 345345, 1232]

# arr.each do |i|
#   p i
# end
# # or #
# arr.each { |i| p i }

# For - in Loops

# for i in 0..42
#   p i
# end

# Looping over a hash 

# teams = {
#   "Houston Astros" => {
#     "first base" => "AJ Reed",
#     "second base" => "Jose Altuve",
#     "shortstop" => "Carlos Correa"
#   },
#   "Texas Rangers" => {
#     "first base" => "Prince Fielder",
#     "second base" => "R. Odor",
#     "shortstop" => "Elvis Andrus"
#   }
# }

# teams.each do |team, players|
#   puts team

#   players.each do |position, player|
#     p "#{player} startes at #{position}"
#   end
# end

# (class) Enumerators Selectmethod

# (1..10).to_a.select do |x|
#   x.even?
# end

# #or#
# (1..10).to_a.select { |x| x.even?}

# # or Here even is a method!! #

# (1..10).to_a.select(&:even?)

# %w converts each word into an element in an array. this is called a % string

# arr = %w(The quick brown fox jumped over the lazy dog)
# arr.select { |x| x.length > 5}

# map method




