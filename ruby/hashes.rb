# PSEUDOCODE

  # create empty hash

  # for each field of data (client's name -- string, age -- integer, number of children -- integer, vegan? -- boolean), decor theme -- string):
    # prompt designer/user to answer provide input
    # convert each input into appropriate data type
    # pass each converted input into the corresponding keys in hash (use symbols for keys)

  # print hash to screen when completed

  # prompt designer/user to update info (no loops - just once)
  # if designer/user enters "none", skip the update (print message to screen); otherwise, convert input to appropriate type (string to symbol) then prompt designer/user to enter updated value for key and update the key with new value.

  # print updated hash to screen and exit program





client_info = {}

puts "What is the client's name?"
client_name = gets.chomp
client_info[:name] = client_name

puts "How old is the client?"
client_age = gets.chomp.to_i
client_info[:age] = client_age

puts "How many children do the client have (if none, type 'none')?"
num_of_children = gets.chomp
if num_of_children == "none"
  num_of_children = NIL
else
  num_of_children = num_of_children.to_i
end
client_info[:children] = num_of_children

puts "Is this client a vegan (y/n)?"
vegan_input = gets.chomp.downcase
if vegan_input == "y" || vegan_input == "yes"
  vegan_value = true
elsif vegan_input == "n" || vegan_input == "no"
  vegan_value = false
else
  vegan_value = nil
end
client_info[:vegan] = vegan_value

puts "What is the client's preferred decor theme?"
theme_input = gets.chomp
client_info[:theme] = theme_input

p client_info
