# Your code here
def convert_word_to_pig_latin(word)
  if word.to_s =~ /\b[aeiou][a-z]*\b/
    word.to_s
  else
    word_array1 = word.split('')
      count = 0
    word_array1.each do |letter|
      evaluation = letter =~ /[^aeiou]/
      if evaluation == 0
        count += 1
      else
        break
      end
    end
    word_array2 = word.split('').rotate(count).join + "ay"
  end
end

def convert_sentence_to_pig_latin(sentence)
  sentence_array = sentence.split(/(\W)/)
  converted_sentence = ""
  sentence_array.each do |word|
    if word != " "
     converted_sentence += convert_word_to_pig_latin(word)
   else converted_sentence << " "
    end
  end
  converted_sentence
end
