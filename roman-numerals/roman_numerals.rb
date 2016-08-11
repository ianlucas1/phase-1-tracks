def convert_to_roman(arabic_number, options = {})
  roman_numerals = {
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IIII",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "VIIII"
    }

  new_roman_numerals = {
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX"
}

int_ary = arabic_number.to_s.split('')


thousands_place = ""
hundreds_place = ""
tens_place = ""


# THOUSANDS PLACE
int_ary[-4].to_i.times do
  thousands_place << "M"
end

# HUNDREDS PLACE

if int_ary[-3].to_i > 4
  hundreds_place << "D"
end

if int_ary[-3].to_i > 4
  num_of_D_over_5 = int_ary[-3].to_i - 5

  num_of_D_over_5.times do
    hundreds_place << "C"
  end
else
  int_ary[-3].to_i.times do
    hundreds_place << "C"
  end
end

# TENS PLACE

if options == { modern: true } && int_ary[-2].to_i == 9
  tens_place << "XC"
elsif int_ary[-2].to_i > 4
  tens_place << "L"
end

if options == { modern: true } && int_ary[-2].to_i == 4
  tens_place << "XL"
elsif int_ary[-2].to_i > 4 && options == { modern: false }
  num_of_X_over_5 = int_ary[-2].to_i - 5
  num_of_X_over_5.times do
    tens_place << "X"
end
elsif options == { modern: false }
  int_ary[-2].to_i.times do
    tens_place << "X"
  end
end

# ONES PLACE
if options == { modern: true }
  ones_place = new_roman_numerals[int_ary[-1].to_i]
else
  ones_place = roman_numerals[int_ary[-1].to_i]
end

# p thousands_place.to_s
# p hundreds_place.to_s
# p tens_place.to_s
# p ones_place

 thousands_place.to_s + hundreds_place.to_s + tens_place.to_s + ones_place.to_s
###WHY DID WE NEED TO CONVERT ones_place.to_s
  # new_string = ""

  # divided_num = arabic_number / roman_numerals
  # remainder = arabic_number % 10

  # divided_num.times do |letter|
  #   new_string << "X"
  # end

  # p divided_num
  # p remainder
  # roman_numerals[remainder]
  # p new_string

  # case arabic_number
  # when 1
  #   "I"
  # when 4
  #   "IIII"

  # end
end

p convert_to_roman(20)
p convert_to_roman(11)
p convert_to_roman(30)
