 require "pry"



 # x Given an array with numbers, write a program that efficiently answers queries of the form: "Which is the nearest larger value for the number at position i?", where distance is the difference in array indices. For example in the array [1,4,3,2,5,7], the nearest larger value for 4 is 5.

 # Which is the nearest larger value for the number at position i?

 # where distance is the difference in array indices

 # For example in the array [1,4,3,2,5,7], the nearest larger value for 4 is 5.


arr = [1,4,3,2,5,7]
#     [0,1,2,3,4,5]


p 'Enter a value: '
num = gets.chomp.to_i
# find enter value in the array and grab the indice
larger_number = 0
arr.each do |x| 

  p (num <=> x) == 0

end