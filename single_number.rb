# frozen_string_literal: true

# Given a non-empty array of integers, every element appears twice except for one. Find that single one.
# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# My solution, fails because it returns an arr instead of the number itself

# Big Oh; O(n^2) + O(1) + O(n) + O(1) + O(1) + O(1) = O(n^2)
def single_number(nums)
  nums.sort! # O(n^2)
  index = 1 # O(1)
  nums.each do |num| # O(n * 1) = O(n)
    if num == nums[index] # O(1)
      nums.delete(num) # O(1)
      next
    end
    return num # O(1)
  end
end

# Solutions from Leetcode
# Big Oh; O(1) + O(n) * O(n) + O(1) + O(1) , Space Complexity O(n^2)
# def single_number(nums)
#   no_duplicate = [] # O(1)
#   nums.each do |num| # O(n)
#     if !no_duplicate.include?(num) # O(n)
#       no_duplicate << num # O(1)
#     else
#       no_duplicate.delete(num) # O(1)
#     end
#   end
#   no_duplicate.pop
# end

# Using Hashtable.. to debug
# def single_number(nums)
#     hash_table = {}
#     for num in nums
#         begin
#             hash_table.delete(num)
#             if nil
#         rescue
#             hash_table[num] = 1
#         end
#     end
#     return hash_table.fetch(0)
# end

single_number([2, 2, 1, 5, 5, 8, 8])
