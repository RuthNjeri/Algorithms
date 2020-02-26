
def binary_search(arr, k)
    size = arr.size
    low = 0
    high = size - 1
    while low <= high
        mid = low + (high - low)/2
        if arr[mid] == k
            return true
        elsif arr[mid] > k
            high = mid - 1
            if high == low
                return true
            end
        elsif arr[mid] < k
            low = mid + 1
        end
    end
    return false
end

print binary_search([7,8,9,10], 99)