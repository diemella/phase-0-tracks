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

#=======================================================================#


# Fibonacci Calculator



# -----------------------------

# [0,1,1,2,3,5...]
#  1,2,3,4,5,6...

# fib(1) = 0
# fib(2) = 1
# fib(3) = fib(3-1) + fib(3-2)
# fib(4) = fib(4-1) + fib(4-2)
# fib(5) = fib(5-1) + fib(5-2)
# fib(6) = fib(6-1) + fib(6-2)

# fib(n) = fib(n-1) + fib(n-2)

# -----------------------------

# PSEUDOCODE

# array = [0,1,1,2,3,5]
# array.length  => should return 6

# declare an array with first two integers (0 and 1)

# access the last two integers:
  # array[array.length - 1] and array[array.length - 2]

# add the two integers:
  # array[array.length -1] + array[array.length -2]

# shovel it into the array like so:
  # array << [array.length -1] + array[array.length -2]

#-----------------------------

# METHOD

def fib(n)

  fib_seq = [0, 1]

  while n > 2
    fib_seq << fib_seq[fib_seq.length - 1] + fib_seq[fib_seq.length - 2]
    n -= 1
  end

  return fib_seq

end

#-----------------------------

# DRIVER CODE

p fib(6)
# => [0, 1, 1, 2, 3, 5]

p fib(100).last == 218922995834555169026
# => true



#=======================================================================#


# Bubble Sort



# PSEUDOCODE

# Take an array of integers.
# Determine the number of pass (length of array - 1)
# For each pass, compare with the first two adjacent integers. Swap the integers if out of order. Then, compare the next adjacent integers and swap, if needed, until the last two integers are compared.
# Repeat until no swap is needed.



# METHOD

def bubble_sort(arr)
  num_of_pass = arr.length - 1
  loop do
    swapped = false

    num_of_pass.times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
      # p arr
    end

    if swapped == false
      break
    end

  end
  arr
end



# DRIVER CODE

arr = [ 15, 2, 4, 32, 7, 9]

p bubble_sort(arr)
