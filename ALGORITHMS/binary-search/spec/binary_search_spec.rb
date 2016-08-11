require_relative '../binary_search'

describe 'binary_search_include?' do
  let(:array){[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}
  let(:array2){[1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]}
   it 'returns true if object is in the sorted_array' do
     expect(binary_search_include?(4, array)).to eq true
   end

   it 'returns false if object is not in the sorted_array' do
     expect(binary_search_include?(11, array)).to eq false
   end

   it 'returns true if object is in the sorted_array' do
     expect(binary_search_include?(5, array)).to eq true
   end

   it 'returns true if object is in the sorted_array' do
     expect(binary_search_include?(1, array)).to eq true
   end

   it 'returns true if object is in the sorted_array' do
     expect(binary_search_include?(10, array)).to eq true
   end

   it 'returns true if object is in the sorted_array' do
     expect(binary_search_include?(5, array2)).to eq true
   end

   # it 'returns length of the array_true' do
   #   expect(binary_search_include?(true, array_true)).to eq 1
   # end
end




describe 'binary_search' do
end
