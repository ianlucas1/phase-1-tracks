# steps for processing each argument
# convert argument to a string (.to_s)...it does not matter if the argument is a string, symbol, or integer
# put all characters into the same case (.downcase)
# delete any spaces (.delete(' '))...there is not logic to remove other kinds of possible characters
# split string into an array (.split('')) 
# sort the array (.sort)
# rejoin the characters in the array to form a processed string (.join)
# returns 'true' if both processed strings are identical, otherwise 'false'

def anagrams?(str_sym_or_int_1, str_sym_or_int_2)
  str_sym_or_int_1.to_s.downcase.delete(' ').split('').sort.join == str_sym_or_int_2.to_s.downcase.delete(' ').split('').sort.join
end
