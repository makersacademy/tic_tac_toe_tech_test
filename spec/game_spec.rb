require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:board) { double :board }

  describe '#initialize' do
    it 'generates a new board' do
      expect(game.board).not_to be_nil
    end
  end

  describe '#show_board' do
    it 'prints the board' do
      expect{ game.show_board }.to output("* 1 2 3\n" +
                                          "1 - - -\n" +
                                          "2 - - -\n" +
                                          "3 - - -\n").to_stdout
    end
  end
end
