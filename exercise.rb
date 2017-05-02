
 #string method eql()?
 #method scan()string

# take order and compare to our keys in hash
# Create a Menu that has a list of items or services with prices.
menu = {hotdog: 7.50, sushi: 13.00, greendrink: 5.50, burrito: 6.00}


# Display the menu far the user to see.
menu.each do |item, price|
  puts "#{item} ----  $" + "%.2f" % price
end
# Crate an employee to ask which service the user would like.
#Order variable to hold customers total order
order = []

puts "What would you like today?"
pick = gets.chomp.split.join.downcase

#checks to see if pick is in menu list

if menu.has_key?(pick.to_sym)
  order.push({item: pick, price: 7.50})
  order[pick.to_sym] = menu[pick.to_sym]
  puts order #  Grab and return key and value to hash
else
  puts "Please choose from our menu options."
end
# Ask if they would like anything else.

begin
  puts "Would you like anything else? If no enter no."
  pick = gets.chomp.split.join.downcase

   if menu.has_key?(pick.to_sym)
      order[pick.to_sym] = menu[pick.to_sym]
      puts order #  Grab and return key and value to hash
    end
end until pick == 'no'

# Display the items they chose and the total cost.
order.each do |item, price|
  puts "#{item} ----  " + "%.2f" % price
end


# The client is now wanting a rating system for their customers.
# Ask the customer for their name and a rating 1-5
# Store the information and display it from highest rating to lowest.
# Display the average rating

