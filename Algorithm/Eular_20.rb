require "pry"

# Factorial digit sum
# Problem 20 
# n! means n * (n − 1) * ... * 3 * 2 * 1

# For example, 10! = 10 * 9 * 8 * 7 * 6 * 5 * 4 * * 3 * 2 * 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial_value_sum_generator(factorial)
  arr = (1 .. factorial).to_a.reverse.each { |i| factorial += factorial * (i - 1) }
  p factorial.to_s.split(//).map(&to_i).inject(:+)
  binding.pry
end

p factorial_value_sum_generator(100)