# frozen_string_literal: true

# Write a method that will return the sum of all the elements of the int array,
# given array as an input argument.

# My answer
def sum_arr(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

# From the Datastructures book
# def sum_arr(arr)
#   sum = 0
#   len = arr.size
#   index = 0
#   while index < len
#     sum += arr[index]
#     index += 1
#   end
#   sum
# end

print sum_arr([1, 2, 4])
