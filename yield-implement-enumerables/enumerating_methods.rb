#each is already implemented as an example, check the test for it too!
def each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

def find(array)
  i = 0
  while i < array.length
    if yield(array[i])
      return array[i]
    end
    i += 1
  end
end

def map(array)
  new_arr = []
  i = 0
  while i < array.length
    new_arr << yield(array[i])
    i += 1
  end
  new_arr
end

def select(array)
  new_arr = []
  i = 0
  while i < array.length
    if yield(array[i])
    new_arr << array[i]
    end
    i += 1
  end
  new_arr
end

def reject(array)
new_arr = []
  i = 0
  while i < array.length
    if !yield(array[i])
      # p yield(array[i])
    new_arr << array[i]
    end
    i += 1
  end
  new_arr
end

# Coding all? is optional.
def all?(array)
  i = 0
  while i < array.length
    if !yield(array[i])
      p yield(array[i])
      return false
    end
    i += 1
  end
  true
end

# Coding reduce is optional.
def reduce(array, starting_value = nil)
  i = 0
  # starting_value = ''
  # new_value = starting_value
  new_value = []
  while i < array.length
    yield(array[i])
    new_value << array[i]
    i += 1
  end
  new_value
end
