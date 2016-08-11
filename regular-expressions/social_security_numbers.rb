# Look at the tests in `spec/social_security_numbers_spec.rb`
# to see a description of how these methods should behave.


# Determine whether a string contains a Social Security Number.
def has_ssn?(string)
  if /\b[0-9]{3}\D*[0-9]{2}\D*[0-9]{4}\b/ =~ string
    true
  else
    false
  end
end

# Find and return a Social Security Number.
def grab_ssn(string)
  if has_ssn?(string)
    ssn_start = /\d{3}\-\d{2}\-\d{4}/ =~ string
    ssn_end = ssn_start + 11
    ssn = string[ssn_start...ssn_end]
  else
    ""
  end
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
  ssn_array = []
  sentence_array = string.split
  sentence_array.each do |word|
    if grab_ssn(word) != ""
      ssn_array << grab_ssn(word)
    end
  end
  ssn_array
end

# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)
  sentence_array = string.split
  sentence_array.each do |word|
    if has_ssn?(word)
      word.gsub!(/\d{3}\-\d{2}/, 'XXX-XX')
    end
  end
  sentence_array.join(' ')
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
  sentence_array = string.split
  sentence_array.each do |word|
    if has_ssn?(word)
      # word.gsub!(/\D/, '')
      word.gsub!(/[-.]/, '')
      word.insert(3, '-')
      word.insert(6, '-')
    end
  end
  sentence_array.join(' ')
end
