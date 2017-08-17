# RELEASE 0: Write a method that takes a block.

def toppings
end

toppings{|topping_1,topping_2,topping_3| puts "I want #{topping_1}, #{topping_2}, and #{topping_3} on my pizza!"}


# RELEASE 1: Iterate through array and hash using .each and .map!

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

puts "Original data:"
p menu

menu.each do |menu_item, price|
  puts "The price for the #{menu_item} is $#{price}."
end

puts "Confirming .each call:"
p menu


# RELEASE 3: Use Ruby Docs to find other methods that takes blocks.

# Array

our_array = [10, 20, 30, 40, 50]
# .delete_if method
# p our_array.delete_if {|number| number > 25}

# # .keep_if method
# p our_array.keep_if {|number| number >= 25}

# # .select method
# p our_array.select {|number| number > 25}

# # .drop_while method
p our_array.drop_while {|number| number < 25 }

# Hash

our_hash = {
  "a" => 56,
  "b" => 23,
  "c" => 35
}

# .delete_if method
# p our_hash.delete_if {|letter, number| number <= 35 }

# .keep_if method
# p our_hash.keep_if { |letter, number| number <= 35 }

# .select method
# p our_hash.select {|letter, number| number <= 35}

# .drop_while method
p our_hash.drop_while {|letter, number| number > 23}