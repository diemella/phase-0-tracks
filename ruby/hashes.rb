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

p client_info
