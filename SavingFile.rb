
# take order and compare to our keys in hash
# Create a Menu that has a list of items or services with prices.
def menu
  [
    {item: "hotdog", display: "Hot Dog", price: 7.50},
    {item: "sushi", display: "Sushi", price: 13.00},
    {item: "greendrink", display: "Green Drink", price: 5.50},
    {item: "burrito", display: "Burrito", price: 6.00}
  ]
end
# Display the menu for the user to see.
puts "*********   MENU   ****************"
menu.each do |menu_item|
  puts menu_item[:display] + "   $%.2f" % menu_item[:price]
end
puts "**********************************"
# Crate an employee to ask which service the user would like.
#Order variable to hold customers total order
order = []
puts "What would you like today?"
pick = gets.chomp.split.join.downcase

#checks to see if pick is in menu list

  menu.each do |menu|
    if menu[:item] == pick
      puts "OK"
    else
      puts "That is not on our menu."
    end
  end

begin
  puts "Would you like anything else? /nIf no enter no."
  pick = gets.chomp.split.join.downcase

   if menu[:item].split.join.downcase == pick
      order[pick.to_sym] = menu[pick.to_sym]
      puts order #  Grab and return key and value to hash
    end
end until pick == 'no'

# Display the items they chose and the total cost.

order.each do |item, price|
  puts "#{item} ----  " + "%.2f" % price
  puts total
end


# The client is now wanting a rating system for their customers.
# Ask the customer for their name and a rating 1-5
# Store the information and display it from highest rating to lowest.
# Display the average rating

