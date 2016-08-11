# Release 0: Linear Search

# Write a method linear_search that takes
# two arguments: an object and an array. The
# method should iterate over each element in
# sequence and return the index where the
# object is first found. If the object cannot
# be found, the method returns nil.

def linear_search(object, array)
  i = 0
  while i < array.length
    if /(#{object})/ =~ array[i]
      return i
    end
    i += 1
  end
end

# Release 1: Global Linear Search

# Let's write a new global_linear_search method that
# returns an array of all the indices where the element
# is found.

def global_linear_search(object, array)
  objects_found = []
  i = 0
  while i < array.length
    if /(#{object})/ =~ array[i]
      objects_found << i
    end
    i += 1
  end
  objects_found
end
