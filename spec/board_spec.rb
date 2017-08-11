require 'board.rb'

describe Board do
  let(:player_1) { double(:player, name: "jini", value: 'X') }
  let(:player_2) { double(:player, name: "andrew", value: 'O') }
  subject(:board1) { described_class.new(player_1, player_2) }

  describe '#attributes' do

    it "initializes with a player1" do
      expect(board1.player_1).to eq(player_1)
    end

    it "initializes with a player2" do
      expect(board1.player_2).to eq(player_2)
    end

    it "initializes with an empty board" do
      expect(board1.board).to eq(nil)
    end

    it "initializes with a turn" do
      expect(board1.turn).to eq('X')
    end
  end

  describe '#create_board' do
    it "creates a new, empty board" do
      expect(board1.create_board).to eq([[1,2,3],
                                         [4,5,6],
                                         [7,8,9]])
    end
  end

  context 'A board is already created' do

    before do
      board1.create_board
    end

    describe '#print_board' do
      it "prints the board" do
        expect { board1.print_board }.to output("[1, 2, 3]\n[4, 5, 6]\n[7, 8, 9]\n").to_stdout
      end
    end

    describe '#play_square' do
      it "plays a square on the board as either 'X' or 'O' and shows the board" do
        expect { board1.play_square(5) }.to output("[1, 2, 3]\n[4, \"X\", 6]\n[7, 8, 9]\n").to_stdout
      end
    end

    describe '#check_turn' do
      it "checks whose turn it is" do
        expect(board1.check_turn).to eq('X')
      end
    end
  end

end
