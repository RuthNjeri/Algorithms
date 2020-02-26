# frozen_string_literal: true

# Given an array, rotate the array to the right by k steps, where k is non-negative.
def rotate(nums, k)
  if k.positive?
    i = 1
    while i <= k
      nums.push(nums[0])
      nums.delete_at(0)
      i += 1
    end
    nums
  end
end

print rotate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 6)

# def reverseArray(a, start, end1)
#     i = start
#     j = end1
#     while i < j
#         temp = a[i]
#         a[i] = a[j]
#         a[j] = temp
#         i += 1
#         j -= 1
#     end
# end

# def rotateArray(a, k)
#     n = a.length()
#     reverseArray(a, 0, k - 1)
#     reverseArray(a, k, n - 1)
#     reverseArray(a, 0, n - 1)
#     return a
# end

# print rotateArray([1, 2, 3, 4, 5, 6, 7], 2)
