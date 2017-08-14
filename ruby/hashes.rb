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

puts client_info

puts "Which of the following client's information would you like to update: name, age, children, vegan, or theme? (If none, type 'none'.)"
update_key = gets.chomp

  if update_key == "none"
    puts "You've completed inputting data for this client!"
  elsif update_key == "theme" || update_key == "name"
    update_key = update_key.to_sym
    puts "Enter the new value for #{update_key}: "
    new_value = gets.chomp
    client_info[update_key] = new_value
  elsif update_key == "age" || update_key == "children"
    update_key = update_key.to_sym
    puts "Enter the new value for #{update_key}: "
    new_value = gets.chomp.to_i
    client_info[update_key] = new_value
  elsif update_key == "vegan"
    update_key = update_key.to_sym
    puts "Is this client a vegan (y/n)?"
    new_value = gets.chomp.downcase
    if new_value == "y" || new_value == "yes"
      new_value = true
    elsif new_value == "n" || new_value == "no"
      new_value = false
    else
      new_value = nil
    end
    client_info[update_key] = new_value
  else
    puts "There is no field for #{update_key}."
  end

p client_info