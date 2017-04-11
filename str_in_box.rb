require "pry"

# Write a method that takes a list of strings and prints them, one per line, in a rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets printed as:

# *********
# * Hello *
# * World *
# * in    *
# * a     *
# * frame *
# *********


# Get a sentance #

puts "Please enter a sentance to print in a box: "
sentance = gets.chomp.split(' ')

@longest_word = " "

# find the longest word in array list
sentance.each do |word|
  if @longest_word.length < word.length
    @longest_word = word
  end
end

# Print out the sentance in a box
.................

# first row length plus a 2 spaces on either side centered and two * on end.
  (@longest_word.length) + 4)
# loop through sentance to get the word and center with a space on either side of the word

