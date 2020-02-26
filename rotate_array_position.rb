# frozen_string_literal: true

# Given an array, you need to rotate its elements K number of times.
# Example; [10,20,30,40,50,60] rotate by 2 positions to [30, 40,50,60,10,20]

def rotate_arr(arr, k)
  current_index = 0
  rotation = 0
  temp_arr = []

  while rotation < k
    temp_arr[rotation] = arr[0]
    arr.shift
    rotation += 1
  end


  while current_index < temp_arr.size
    arr.push(temp_arr[current_index])
    current_index += 1
  end

  return arr

end

print rotate_arr([-1,-100,3,99], 2)