require_relative '../tic_tac_toe'

describe 'generating a tic-tac-toe board' do
  let(:board) { generate_tic_tac_toe }

  describe 'board structure' do

    it 'has three rows' do
      expect(board.length).to eq 3
    end

    it 'has rows with three columns' do
      row_lengths = board.map(&:length)
      expect(row_lengths).to all(be 3)
    end

    it 'only contains Xs and Os' do
      board_elements = board.flatten.uniq.sort
      expect(board_elements.first).to eq "O"
    end

    it 'only contains Xs and Os' do
      board_elements = board.flatten.uniq.sort
      expect(board_elements.last).to eq  "X"
    end
  end
end



