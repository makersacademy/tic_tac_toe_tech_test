require 'board.rb'

describe Board do
  subject(:board1) { described_class.new }

  describe '#attributes' do
    it "initializes with an empty board" do
      expect(board1.board).to eq(nil)
    end
  end

  describe '#create_board' do
    it "creates a new, empty board" do
      expect(board1.create_board).to eq([[1,2,3],
                                         [4,5,6],
                                         [7,8,9]])
    end
  end

  describe '#print_board' do
    it "prints the board" do
      board1.create_board
      expect { board1.print_board }.to output("[1, 2, 3]\n[4, 5, 6]\n[7, 8, 9]\n").to_stdout
    end
  end
end
