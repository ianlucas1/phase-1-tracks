# Release 0: Iteratively Calculate a Factorial
def factorial_iterative(n)
  # reduce approach:
  product = (1..n).reduce(1, :*)
  product

  # product = 1
  # product.upto(n) { |i| product *= i }
  # product

  # the following approach works while n > 1
  # i = n - 1
  # while i >= 1
  #   product = n *= i
  #   i -= 1
  # end
  # product
end

# Release 1: Recursively Calculate a Factorial
def factorial_recursive(n)
  if n == 0
    1
  else
    n * factorial_recursive(n-1)
  end
end

# p factorial_recursive(8750)
