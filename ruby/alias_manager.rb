# PSEUDOCODE

# Create a method that:
  # takes in a name (string) and turn into two elements (first and last) inside an array, and then swap the order.
  # split name (new first and last name) into an array of individual letters.
  # pass each letter through a loop to change letter to next vowel or consonant accordingly

# Create a next_vowel method that takes a vowel and returns the next vowel character

# Create a method that takes a consonant and returns the next consonate character. # consonants = "bcdfghjklmnpqrstvwxyz"

# INPUT -- Agent's Real Name
# OUTPUT -- Agent's Alias
# example input: "Felicia Torres"
# example output: "Vussit Gidmodoe"



# METHODS

#==========vowels only method==========#

# def next_vowel(word)
#   vowels = ["a", "e", "i", "o", "u"]
#   word = word.downcase.chars
#   word.map! do |letter|
#     if vowels.include?(letter)
#     vowels.rotate(1)[vowels.index(letter)]
#     else
#       letter
#     end
#   end
#   word.join
# end
# # p next_vowel("Felicia Torres")


# #==========consonants only method==========#

# def next_consonant(word)
#   consonants = "bcdfghjklmnpqrstvwxyz"
#   consonants = consonants.chars
#   word = word.downcase.chars
#   word.map! do |letter|
#     if consonants.include?(letter)
#     consonants.rotate(1)[consonants.index(letter)]
#     else
#       letter
#     end
#   end
#   word.join
# end
# # p next_consonant("Zebra")


#==========vowels and consonant method==========#

def next_letter (string)
  consonants = "bcdfghjklmnpqrstvwxyz"
  consonants = consonants.chars
  vowels = ['a', 'e', 'i', 'o', 'u']
  string = string.downcase.chars
  string.map! do |character|
    if vowels.include?(character)
      vowels.rotate(1)[vowels.index(character)]
    elsif consonants.include?(character)
      consonants.rotate(1)[consonants.index(character)]
    else
      character
    end
  end
  string.join
end
# p next_letter("Felicia Torres")

def alias_generator (real_name)
  real_name = real_name.downcase.split
  swapped_name = real_name.reverse.join(' ')
  alias_name = ""
  char_index = 0
  while char_index < swapped_name.length
    alias_name << next_letter(swapped_name[char_index])
    char_index += 1
  end
  alias_name.split.map! { |name| name.capitalize }.join(' ')
end

# p alias_generator("Felicia Torres") == "Vussit Gimodoe"



# DRIVER CODE

agents_directory = {}

valid_input = false

until valid_input

  puts "What is your name? Type 'quit' when done."
  name_input = gets.chomp

  if name_input == "quit" || name_input == "Quit" || name_input == "QUIT"
    valid_input = true
  else
    p "Your alias is: #{alias_generator(name_input)}"
    agents_directory[name_input] = alias_generator(name_input)
  end

end

p agents_directory

agents_directory.each do |key, value|
  puts "#{value} is actually #{key}."
end