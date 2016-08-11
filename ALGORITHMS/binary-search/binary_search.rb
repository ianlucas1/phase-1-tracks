#method takes two arguments: an object and a sorted array
#find the length of the array, length of array / 2
#edge cases if odd number of elements in the array
#find the base cases

# def binary_search_include?(object, sorted_array)
#   # return false if sorted_array.length == 0
#     if (sorted_array.length / 2).odd?
#       index_to_search_to = sorted_array.length / 2 + 1
#     else
#       index_to_search_to = sorted_array.length / 2
#     end
#     index_to_search_to
#       i = 0
#       array_true = []
#       while i < index_to_search_to
#         if sorted_array[i] == object
#           array_true << true
#         end
#       i += 1
#       end
#         if array_true.length == 0
#           while i < sorted_array.length
#             if sorted_array[i] == object
#               array_true << true
#             end
#             i += 1
#           end
#         end
#          if array_true.length == 0
#           false
#          else
#           true #if array_true.length > 0
#          end
#     # binary_search_include?(object, array_true)
# end

def binary_search_include?(object, array)

  loop do

  if object < array[0] || object > array[-1]
    return false
    break
  end
  midpoint = array[(array.length / 2)]
  if array.length <= 2
     return true
  end
  # p midpoint
  # p array[0]
  # p array[-1]
  # p array
  if object == midpoint || object == array[0] || object == array[-1]
    return true
    break
  elsif
    object < midpoint
    array = (array[0]..midpoint).to_a
  else
    array = (midpoint..array[-1]).to_a
  end
   # p array
  binary_search_include?(object, array)
 end
end

# attempted method
# def index_finder(object, array)
#   binary_search_include?(object, array)
#   i = 0
#   while i < original_array.length
#     if object == original_array[i]
#       p i
#     end
#     i += 1
#   end
# end

# index_finder(3, array)
#   # index_value = array[object]
#   # p index_value

