# Objective of this recursive algorithm program:
# calculate the number of unique 'k'-sized groups 
# of items out of a collection of 'n' objects

# k = size of subset arrangements 
# (e.g. k = 2 means we are creating subset arrangements of 2 objects)

# n = size of the group of objects from which 'k' is sampled 
# (e.g. n = 3 means that the total number of objects is 3)

# so we expect to find 3 ways of arranging subsets of size 2 out of a 
# group of 3 objects (apple, banana, and cherry): 
# {apple, banana}, {apple, cherry}, {banana, cherry} = 3

# SUBSET RECURSION
def subset_count(n, k)
  return n if n == 0  # f(0, 5) => 0
  return 1 if k == 0  # f(3, 0) => 1
  return n if k == 1  # f(7, 1) => 7
  return 1 if k == n
  subset_count(n - 1, k - 1) + subset_count(n - 1, k)
end

# ITERATIVE RECURSION TO GET TOTAL UNIQUE COMBINATIONS OF 'n' OBJECTS
def total_subset_count(n)
  
  k = 0
  subset_ary = []
  
  def single_subset_count(n, k)
    return n if n == 0  # f(0, 5) => 0
    return 1 if k == 0  # f(3, 0) => 1
    return n if k == 1  # f(7, 1) => 7
    return 1 if k == n
    single_subset_count(n - 1, k - 1) + single_subset_count(n - 1, k)
  end
  
  (n+1).times do
    subset_ary << single_subset_count(n, k)
    k += 1
  end
  
  subset_ary.reduce(:+)
end
