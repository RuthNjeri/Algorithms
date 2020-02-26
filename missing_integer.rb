# frozen_string_literal: true

# Write a function: def solution(a) that, given an array A of N integers,
# returns the smallest positive integer (greater than 0) that does not occur in A.
# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5. Given A = [1, 2, 3],
# the function should return 4. Given A = [−1, −3], the function should return 1. Write an efficient algorithm for the following
# assumptions: N is an integer within the range [1..100,000]; each element of array A is an integer within the range [−1,000,000..1,000,000].

# a = [-1, -3, 90000, 2882939, 8, 7, 5, 3]

def solution(a)
  unless a.empty?
    ordered_array = a.sort.uniq
    min = 1

    ordered_array.each do |num|
      return 1 unless num.positive?

      min += 1 if num == min
    end

    min
  end
end

print solution([1, 3, 6, 4, 1, 2])
