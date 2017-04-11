# string interpilation = you have to use double qoutes to use string interpilation

# anything between #{} can be anything can be ruby code not just variables

puts "Name an animal"

animal = gets.chomp
puts "name a noun!"

noun = gets.chomp

p "The quick brown #{animal} jumped over the lazy #{noun}"