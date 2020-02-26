# frozen_string_literal: true

# def solution(binary)
#     counter = 0
#     decimal = binary.to_i(2)
#     while binary.to_i(2) != 0
#         if (binary.to_i & 1) == 0 # even
#             new_num = binary.to_i(2) / 2
#             binary = new_num.to_s
#             counter += 1
#         else   # odd
#             new_num = binary.to_i(2) - 1
#             binary = new_num.to_s
#             counter += 1
#         end
#     end
#     return counter
# end

# print solution("0110")

def solution(binary)
  counter = 0
  decimal = binary.to_i(2)

  while decimal != 0
    if decimal.even? # even
      decimal /= 2
    else # odd
      decimal -= 1
      counter += 1
    end
  end
  counter
end

print solution('011100')
