require "pry"

# Binary guessing fame where cpu tells you a number is higher or lower from 1 - 25, and the user tries to guess the number.

# bonus, give them an option to exit the program.

# CPU chooses number (1-25)

number = rand(1..25).to_i 

# User gives input_end
puts "Enter a number from 1 - 25"
guess = gets.chomp.to_i
correct = false
# comparison from CPU / usercode
# (loop)
while correct == false
  # Display higher / lower
  if guess == number
    puts "Great job you are a master"
    correct = true
  elsif number < guess
    puts "lower - guess again"
    guess = gets.chomp.to_i
  elsif number > guess 
    puts "higher - guess again"
    guess = gets.chomp.to_i
  end
end

    

  # user re-enter input

  # comparison from CPU / user

  # Display higher / lower
