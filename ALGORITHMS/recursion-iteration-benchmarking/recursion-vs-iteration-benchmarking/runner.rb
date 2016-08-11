require_relative 'factorial'
require_relative 'fibonacci'
require 'benchmark'

# puts "Factorial iterative run times:"
# factorial_hash.each do |test, number_of_factorials|
#   result = Benchmark.realtime { factorial_iterative(number_of_factorials) * 500 }
#   puts "The #{test} test took #{result} seconds to run."
# end

# puts ""
# puts "Factorial recursive run times:"
# factorial_recursive_time_hash.each do |test, number_of_factorials|
#   result = Benchmark.realtime { factorial_recursive(number_of_factorials) * 500 }
#   puts "The #{test} test took #{result} seconds to run."
# end

factorial_hash = {
  factorial_zero: 0,
  factorial_1000: 1000,
  factorial_2000: 2000,
  factorial_3000: 3000,
  factorial_4000: 4000,
  factorial_5000: 5000
}
puts "Factorial iterative vs recursive test results:"
factorial_hash.each do |test, number_of_factorials|
  iterative_result = Benchmark.realtime { factorial_iterative(number_of_factorials) * 500 }
  # puts "The #{test} test took #{iterative_result} seconds to run."

  recursive_result = Benchmark.realtime { factorial_recursive(number_of_factorials) * 500 }
  # puts "The #{test} test took #{recursive_result} seconds to run."

  # p difference = recursive_result - iterative_result
  difference = ((recursive_result / iterative_result - 1)*100).round(3).to_s + "%"
  puts "The iterative method is #{difference} faster than the recursive method."
end

#Fibonacci

fibonacci_hash = {
  fibonacci_zero: 0,
  fibonacci_5: 5,
  fibonacci_10: 10,
  fibonacci_15: 15,
  fibonacci_20: 20,
  fibonacci_25: 25,
  fibonacci_30: 30
}

puts ""
puts "Fibonacci iterative vs recursive test results:"
fibonacci_hash.each do |test, fibonacci_index|
  iterative_result = Benchmark.realtime { iterative_nth_fibonacci_number(fibonacci_index) * 500 }
  # puts "The #{test} test took #{iterative_result} seconds to run."

  recursive_result = Benchmark.realtime { recursive_nth_fibonacci_number(fibonacci_index) * 500 }
  # puts "The #{test} test took #{recursive_result} seconds to run."

  # p difference = recursive_result - iterative_result
  difference = ((recursive_result / iterative_result - 1)*100).round(3).to_s + "%"
  puts "The iterative method is #{difference} faster than the recursive method."
end














