require_relative '../convert_table'

describe 'converting a roster from a nested array to a collection of hashes' do
  let(:table_data) { [ ["first_name", "last_name", "city", "state"],
                       ["Elisabeth", "Gardenar", "Toledo", "OH"],
                       ["Jamaal", "Du", "Sylvania", "OH"],
                       ["Kathlyn", "Lavoie", "Maumee", "OH"]
                     ] 
                   }
  let(:array_of_hashes) { convert_table(table_data) }

  describe 'array structure' do

    it 'has three elements' do
      expect(array_of_hashes.length).to eq 3
    end

    it 'is an array' do
      expect(array_of_hashes.class).to eq Array
    end

    it 'has a hash for each element' do
      expect(array_of_hashes[0].class).to eq Hash
    end

    it 'has a hash for each element' do
      expect(array_of_hashes[0]).to eq "first_name"=>"Elisabeth", "last_name"=>"Gardenar", "city"=>"Toledo", "state"=>"OH"
    end
  end
end
