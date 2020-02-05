# frozen_string_literal: true

# Write a function: def solution(a) that, given an array A of N integers,
# returns the smallest positive integer (greater than 0) that does not occur in A.
# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5. Given A = [1, 2, 3],
# the function should return 4. Given A = [−1, −3], the function should return 1. Write an efficient algorithm for the following
# assumptions: N is an integer within the range [1..100,000]; each element of array A is an integer within the range [−1,000,000..1,000,000].

require 'pry'

a = [-1, -3, 90000, 2882939, 8, 7, 5, 3]

def solution(a)
  positive_numbers = []

  a.each do |item|
    if item > 0
      positive_numbers.push(item)
    end
  end
  missing_positive(positive_numbers)
end

def missing_positive(positive_numbers)
  if positive_numbers.size > 0
    ordered_array = positive_numbers.sort.uniq
    min = 1
    for num in ordered_array
      if num == min
        min += 1
      else
        return min
      end
    end
  else
    return 1
  end
end


print solution(a)
