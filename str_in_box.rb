require "pry"

# Write a method that takes a list of strings and prints them, one per line, in a rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets printed as:

# *********
# * Hello *
# * World *
# * in    *
# * a     *
# * frame *
# *********
# Get a sentence #

puts "Please enter a sentence to print in a box: "
sentence = gets.chomp.split(' ')
@longest_word = sentence.max_by { |x| x.length }

def first_last_line
  '*' * (@longest_word.length.to_i + 6)
end

def box sentence
  puts first_last_line
  sentence.each do |word|
    puts '*' + word.center(@longest_word.length.to_i + 4) + '*'
  end
  puts first_last_line
end

box(sentence)






