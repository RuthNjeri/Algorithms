# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    len = s.size
    last_counter = 1
    first_counter = 0

    for letter in s
        temp = s[len - last_counter]
        s[len - last_counter] = letter
        s[first_counter] = temp
        last_counter += 1
        first_counter += 1
        if first_counter == (s.size/2)
            return s
        end
    end
end

puts reverse_string(["h","e","l", "o", "o"])