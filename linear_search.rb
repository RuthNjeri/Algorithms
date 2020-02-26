# frozen_string_literal: true

# Write a method that will search an array for a given value
# Assumes the data is not sorted.

def search_arr(arr, num)
  arr.each do |item|
    return 'Item found' if item == num
  end
  'Item not found'
end

# Using a while loop

# def search_arr(arr, num)
#   index = 0
#   len = arr.size
#   while index < len
#     return 'item found' if arr[index] == num

#     index += 1
#   end
#   'Item not found'
# end

print search_arr([1, 2], 4)
