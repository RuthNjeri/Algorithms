# Given an array of positive and negative integers,
# find a contigous subarray whose sum(sum of elements) is maximum

# sol: for each element, sum it up with the previous item

def max_sum(arr)
    current_sum = 0
    max_so_far = 0
    for num in arr
        current_sum += num
        if max_so_far < current_sum
            max_so_far = current_sum
        end
    end
    return max_so_far
end

print max_sum([1, -2, -1])


