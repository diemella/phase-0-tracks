# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # seperate the string into individual items
  # create empty list
  # move items into list
  # set default quantity (possibly to 1)
  # assign quantity to each item in the list
  # print the list to the console [can you use one of your other methods here?]
# output: list of items and quatities

def create_list(string)
  list = string.split(' ')
  qty = 1
  grocery_list = {}
  list.each { |item| grocery_list[item] = qty }
  grocery_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # if item isn't already in the list
  # set default quantity (possibly to 1)
  # add item to list and update quantity
  # print new list
# output: updated list of items and quantities

def add_item(list, item_to_be_added, qty = 1)
  # if !list.has_key? item_to_be_added
  #   list[item_to_be_added] = qty
  # end
  list[item_to_be_added] = qty if !list.has_key? item_to_be_added
  list
end

# Method to remove an item from the list
# input: list, item to be removed
# steps:
  # delete item from list
  # print new list
# output: updated list

def remove_item(list, item_to_be_removed)
  # if list.has_key? item_to_be_removed
  #   list.delete(item_to_be_removed)
  # end
  list.delete(item_to_be_removed) if list.has_key? item_to_be_removed
  list
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps:
  # if the item is already in the list
  # update quantitiy of item
  # print updated list
# output: updated list

def update_qty(list, item_to_update, new_qty)
  # if list.has_key? item_to_update
  #   list[item_to_update] = new_qty
  # end
  list[item_to_update] = new_qty if list.has_key? item_to_update
  list
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # iterate through list
    # print each item and quantity
# output: each item and quantity

def print_list(list)
  puts "Grocery List"
  list.each { |item, qty| puts "#{item}: #{qty}" }
end


# DRIVER CODE

grocery_list = create_list("strawberries coffee milk")

# p add_item(grocery_list, "blueberries")

# p remove_item(grocery_list, "milk")
# p remove_item(grocery_list, "chocolate")

# p update_qty(grocery_list, "coffee", 2)
# p update_qty(grocery_list, "chocolate", 2)

# print_list(grocery_list)

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions")
add_item(grocery_list, "ice cream", 4)

remove_item(grocery_list, "lemonade")

update_qty(grocery_list, "ice cream", 1)

print_list(grocery_list)


# REFLECTION

# What did you learn about pseudocode from working on this challenge?
  # I learned about best practices for pseudocoding like avoiding language-specific words and capitalizing keywords.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # I think this just depends on the data you're working with. Because this challenge is creating a list of items with it's quantity, the hash was the logical data type to use.

# What does a method return?
  # It returns the value of a the last expression, unless explicity implied.

# What kind of things can you pass into methods as arguments?
  # Strings, integers, other methods -- but must be mindful of the data type meant to be used for it's parameters in the definition.

# How can you pass information between methods?
  # Information can be passed between methods as an argument when calling the method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # Refactoring is a fairly new concept to me at this point. On the otherhand, I'm more knowledgeable about how to approach a problem with pseudocoding.