# frozen_string_literal: true

# def solution(num)
#     if num < 10
#         return 0
#     end
# # 10 ... 1
# # 100 .. 2
#     tens_power = num.to_s.size - 1
#     first_digit = num.to_s[0].to_i
#     smallest_num = first_digit * (10**tens_power)
#     return smallest_num
# end

# print solution(1)

def solution_2(num)
  return 0 if num < 10

  tens_power = Math.log10(num).to_i
  first_digit = num.digits[-1]

  smallest_num = first_digit * (10**tens_power)

  smallest_num
end

print solution_2(10)
