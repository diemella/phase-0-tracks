# Array

pizza_toppings = ["pepperoni", "mushroom", "onions", "bell pepper", "bacon"]

puts "Original data:"
p pizza_toppings

# Iterate with .each

pizza_toppings.each do |topping|
  puts "I want #{topping} on your pizza."
end

puts "Confirming .each call:"
p pizza_toppings

# Iterate with .map!

puts "Original data:"
p pizza_toppings

pizza_toppings.map! do |topping|
  p topping.capitalize
end

puts "Confirming .map! call:"
p pizza_toppings

# Hash
menu = {
  :large_pizza => 15,
  :medium_pizza => 10,
  :small_pizza => 5,
  :side_salad => 5,
  :cheesy_bread => 7,
  :dessert_pizza => 6
}

# Iterate with .each

menu.each do |menu_item, price|
  puts "The price for the #{menu_item} is $#{price}."
end
