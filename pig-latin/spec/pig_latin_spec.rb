require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  # it 'returns the word' do
  #   expect(convert_word_to_pig_latin('word')).to eq 'word'
  # end

  # it 'returns the word if there is a vowel' do
  #   expect(convert_word_to_pig_latin('bht')).to eq ''
  # end

  it 'returns the word if the first letter is a vowel' do
    expect(convert_word_to_pig_latin('eat')).to eq 'eat'
  end

  # it 'shifts the first letter to the end if first letter is a consonant' do
  #   expect(convert_word_to_pig_latin('cat')).to eq 'atc'
  # end

  it 'MOVE all leading consonants to the end of the word and add the suffix "ay"' do
    expect(convert_word_to_pig_latin('chat')).to eq 'atchay'
  end

end

describe 'Converting a sentence to Pig Latin' do

  it 'convert a two word sentence to pig latin' do
    expect(convert_sentence_to_pig_latin('cheese wheel')).to eq 'eesechay eelwhay'
  end

  it 'convert a three word sentence to pig latin' do
    expect(convert_sentence_to_pig_latin('eight cheese wheels')).to eq 'eight eesechay eelswhay'
  end

end




