# the '*' means that the argument can take any number of number elements
def mean(*numbers)
  numbers.reduce(:+) / numbers.length
end
