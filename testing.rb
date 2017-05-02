

# menus array of hashes
@menu_total = 0.0
order = [
          {item: "Hot Dog", price: 7.50},
          {item: "Sushi", price: 13.00},
          {item: "Green Drink", price: 5.50},
          {item: "Burrito", price: 6.00},
        ]

order.push({item: "Hot Dog", price: 7.50})
order.push({item: "Green Drink", price: 5.50})
order.push({item: "Green Drink", price: 5.50})


order.each do |menu_item|
 # puts menu_item
  puts menu_item[:item] + "   $%.2f" % menu_item[:price]
  @menu_total += menu_item[:price]
end

puts "========================"
puts "Total: $%.2f" % @menu_total

