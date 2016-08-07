# TODO: Return the odd numbers from a list of integers.
#       Use #select.
def odd_integers(array)
  array.select { |num| num.odd? }
end

# TODO: Return the first number from an Array that is less than a particular number - 'limit.'
#       Use #find.
def first_under(array, limit)
  array.find { |num| num < limit }
end

# TODO: Take an Array of Strings and return a new Array with an exclamation point appended to each String.
#       Use #map.
def add_bang(array)
  array.map! {|string| string + "!" }
end

# TODO: Calculate the sum of an Array of numbers.
#       Use #reduce.
def sum(array)
  array.reduce(:+)
end

# TODO: Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
#       Use #each_slice in combination with other enumerable methods.
def sorted_triples(array)
  arr = []
  array.each_slice(3) { |a| arr << a.sort }
  arr
end

# TODO: Returns an array of elements at indices 1, 3, 5, 7, etc.
#       Use #each_with_index.
def odd_indexed_elements(array)
  arr = []
  array.each_with_index { |item, index| arr << item if index.odd? }
  arr
end
