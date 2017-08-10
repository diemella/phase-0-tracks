# Method declarations

# Pseudocode for encrypt_method

# take in a string as input
# id the length of the word
# take the each letter in the work and turn it into the following letter in alphabet
# print result
# ex. hello => ifmmp


# Encryption_method code

def encrypt_method (test_string)
  index=0
  while index < test_string.length
    if test_string[index] == "z"
      test_string[index] = "a"
    else
      test_string[index] = test_string[index].next
    end
  index+=1
  end
  puts "Encrypted password is #{test_string}"
  return test_string
end


# Pseudocode for decryption_method

# take in encripted string as input
# id the length of the word
# take each letter and turn it into the preceeding letter of the alphabet
# print the new letter
# ifmmp => hello


# Decryption_method code

def decrypt_method (test_string2)
  index=0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < test_string2.length
    old_letter = alphabet.index(test_string2[index])
    new_letter = old_letter-1
    test_string2[index] = alphabet[new_letter]
    index+=1
  end
  puts "decrypted password is #{test_string2}"
  return test_string2
end

# Testing method calls

# decrypt_method ("ifmmp")
# encrypt_method("abc")
# encrypt_method("zed")
# decrypt_method("bcd")
# decrypt_method("afe")

# decrypt_method(encrypt_method("swordfish"))
  # This method call works because the method encrypt_method returns a value.  This value isthen use for the decryption to use as an input.  The over all result is we end with what original 'swordfish'"


# Pseudocode for driver code

# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
# Asks them for the password
# Conducts the requested operation
# prints the result to the screen


# Driver Code

valid_input = false

until valid_input
  print "Do you want to encryt or decrypt a password? "
  action = gets.chomp

  if action == "encrypt"
    print "What is the password? "
    password = gets.chomp

    encrypt_method(password)
    valid_input = true
  elsif action == "decrypt"
    print "What is the password? "
    password = gets.chomp

    decrypt_method(password)
    valid_input = true
  else
    puts "Input error: please type either encrypt or decrypt."
  end
end