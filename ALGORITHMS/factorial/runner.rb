require_relative 'factorial'

# 8734 is the highest number we can use before
# the stack level gets too deep
number = 8734
factorial = factorial_recursive(number)

puts factorial
