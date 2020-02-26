# frozen_string_literal: true

def binary_search(arr, num)
  size = arr.size
  low = 0
  high = size - 1
  while low <= high
    mid = low + (high - low) / 2
    return true if arr[mid] == num

    if arr[mid] > num
      high = mid - 1
      return true if high == low
    elsif arr[mid] < num
      low = mid + 1
    end
  end
  false
end

print binary_search([7, 8, 9, 10], 99)
