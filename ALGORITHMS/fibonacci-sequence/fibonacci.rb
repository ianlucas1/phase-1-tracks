def iterative_nth_fibonacci_number(n)
  counter = 0
  fibonacci_number = 0
  fibonacci_sequence = [0,1]
  until counter > n
    fibonacci_number = fibonacci_sequence[-1] + fibonacci_sequence[-2]
    fibonacci_sequence << fibonacci_number
    counter += 1
  end
   fibonacci_sequence[n]
end

def recursive_nth_fibonacci_number(n)
  if n <= 1
    n
  else
    recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
  end
end
