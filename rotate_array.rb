# Given an array, rotate the array to the right by k steps, where k is non-negative.

def rotate(nums, k)
    if k > 0
        i = 0
        size = nums.length - 1
       while i < k
            nums.unshift(nums[size])
            nums.pop()
            i += 1
        end
        return nums
    end

end

rotate([1,2,3,4,5,6,7], 3)