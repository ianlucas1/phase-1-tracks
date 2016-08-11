require_relative '../player'

describe Player do
  describe 'init' do
    it 'has a name' do
      expect(Player.new("John").name).to eq "John"
    end
    it 'has an position' do
      expect(Player.new("John").position).to eq 0
    end
  end
end
