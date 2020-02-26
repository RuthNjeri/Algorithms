def solution(arr)
    counter = 0

    for num in arr
        indice = arr.find_index(num) + 1
        while indice <= arr.size
            if num == arr[indice]
                counter += 1
            end
            indice += 1
        end
    end
    if counter > (10**9)
        return 10**9
    else
        return counter
    end
end

print solution([3,5,6,3,3,5])


# def solution(arr)
#     counter = 0
#     indice = 0
#     while indice < arr.size
#         next_indice = indice + 1
#         while next_indice < arr.size
#             if arr[indice] == arr[next_indice]
#                 counter += 1
#             end
#             next_indice += 1
#         end
#         indice += 1
#     end
#     if counter > (10**9)
#         return 10**9
#     else
#         return counter
#     end
# end

# print solution([3,5,6,3,3,5])