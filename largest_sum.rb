# frozen_string_literal: true

# Given an array of positive and negative integers,
# find a contigous subarray whose sum(sum of elements) is maximum

# sol: for each element, sum it up with the previous item

def max_sum(arr)
  current_sum = 0
  max_so_far = 0
  arr.each do |num|
    current_sum += num
    max_so_far = current_sum if max_so_far < current_sum
  end
  max_so_far
end

print max_sum([1, -2, -1])
