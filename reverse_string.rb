# frozen_string_literal: true

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  len = s.size
  last_counter = 1
  first_counter = 0

  s.each do |letter|
    temp = s[len - last_counter]
    s[len - last_counter] = letter
    s[first_counter] = temp
    last_counter += 1
    first_counter += 1
    return s if first_counter == (s.size / 2)
  end
end

puts reverse_string(%w[h e l o o])
