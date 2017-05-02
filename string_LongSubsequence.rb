require "pry"

#**** Given two strings, write a program that efficiently finds the longest common subsequence.
#**** str = %w(racecar a b cder g h i)
#**** str2 = %w(a b cdef racecar g h i 1 2 3 4 5678)
#****racecar would be the **longest** common subsequence.


# break up strings into individual string arrays
str = %w(racecar a b cder g h individual)
str2 = %w(a individual b cdef racecar g h i 1 2 3 4 5678)

# expect the program to return racecar as the longest common subsequence.

matching_array = []

# method to compare the individual strings
str.each do |stringa|
  str2.each do |stringb|
    if stringa == stringb
     matching_array << stringa
    end
  end
end
p matching_array.max {|a, b| a.length <=> b.length }