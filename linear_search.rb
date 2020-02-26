# Write a method that will search an array for a given value
# Assumes the data is not sorted.

def search_arr(arr, k)
    for num in arr
        if num == k
            return 'Item found'
        else
            next
        end
    end
    return 'Item not found'
end

# Using a while loop

def search_arr(arr, k)
    index = 0
    len = arr.size
    while index < len
        if arr[index] == k
            return 'item found'
        end
        index += 1
    end
    return 'Item not found'
end


print search_arr([1,2], 2)









