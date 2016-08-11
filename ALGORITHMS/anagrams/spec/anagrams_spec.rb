require_relative '../anagrams'

describe 'anagrams?' do
  let(:str_sym_or_int_1) { :lEmoNs }
  let(:str_sym_or_int_2) { 'mel o ns' }
  let(:str_sym_or_int_3) { 2468 }
  let(:str_sym_or_int_4) { '486 2' }

  it 'converts argument to a string if it is a symbol' do 
    expect(str_sym_or_int_1.to_s).to eq "lEmoNs"
  end

  it 'converts argument to a string if it is a number' do 
    expect(str_sym_or_int_3.to_s).to eq "2468"
  end

  it 'puts all letters into lowercase form' do 
    expect(str_sym_or_int_1.to_s.downcase).to eq "lemons"
  end

  it 'puts removes any white spaces' do 
    expect(str_sym_or_int_2.to_s.downcase.delete(' ')).to eq "melons"
  end

  it 'converts partially processed string into an array of individual string characters' do 
    expect(str_sym_or_int_2.to_s.downcase.delete(' ').split('')).to eq %w[ m e l o n s ]
  end

  it 'sorts array of string characters' do 
    expect(str_sym_or_int_4.to_s.downcase.delete(' ').split('').sort).to eq %w[ 2 4 6 8 ]
  end

  it 'converts sorted array of individual string characters into a string
  that represents the original argument in its canonical form' do 
    expect(str_sym_or_int_1.to_s.downcase.delete(' ').split('').sort.join).to eq 'elmnos'
  end

  it 'returns true if a string, symbol, or integer is an anagram of itself' do 
    expect(anagrams?(str_sym_or_int_1, str_sym_or_int_2)).to eq true
  end

  it 'returns true if a string, symbol, or integer is an anagram of another string, symbol, or integer' do 
    expect(anagrams?(str_sym_or_int_2, str_sym_or_int_2)).to eq true
  end

  it 'returns true if a string, symbol, or integer is an anagram of another string, symbol, or integer' do 
    expect(anagrams?(str_sym_or_int_3, str_sym_or_int_4)).to eq true
  end

  it 'returns false if a string, symbol, or integer is not an anagram of another string, symbol, or integer' do 
    expect(anagrams?(str_sym_or_int_1, str_sym_or_int_4)).to eq false
  end

end
