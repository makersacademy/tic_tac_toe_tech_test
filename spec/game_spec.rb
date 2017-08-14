require 'game'

describe Game do
  let(:player1) { double :player, name: :Bob, move: :X }
  let(:player2) { double :player, name: :Mike, move: :O }
  grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  let(:board) { double :board, grid: grid }

  subject(:game) { described_class.new(player1: player1, player2: player2, board: board) }

  context '#initialized' do
    it 'accepts a board' do
      expect(game.board).to eq board
    end

    it 'accepts a player1' do
      expect(game.player1).to eq player1
    end

    it 'accepts a player2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#make_move' do
    before do
      io_obj = double
      expect(game).to receive(:gets).and_return(io_obj)
      expect(io_obj).to receive(:chomp).and_return(3)
      expect(board).to receive(:set_value)
    end

    it 'requests the board to update' do
      game.make_move
    end
  end

  describe '#play' do

    context 'when there is a winner' do

      before do
        expect(board).to receive(:winning?).and_return(true)
      end

      it 'anounce a winner' do
        player_name = game.current_player.name
        expect(game.play).to eq ("The winner is " + player_name.to_s)
      end
    end

    context 'when there is a draw' do

      before do
        expect(board).to receive(:winning?).and_return(false)
        expect(board).to receive(:draw?).and_return(true)
      end

      it 'anounce a draw' do
        expect(game.play).to eq "It's a draw"
      end
    end
  end
  
end
