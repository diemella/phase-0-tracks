# Simple Search Method



# METHOD

def search_array(array, integer)
  if array.include?(integer)
    index = 0
    array.each do |number|
      if number == integer
        return index
      end
      index += 1
    end
  else
    return nil
  end
  return
end



# DRIVER CODE

our_array = [ 23, 43, 55, 7, 47]

p search_array(our_array, 47)
# => 4

# The following will allow user interaction:

# puts "What number do you want to search for in our array of integers?"
# int = gets.chomp.to_i

# search_array(our_array, int)

#-------------------------------------------------------------------