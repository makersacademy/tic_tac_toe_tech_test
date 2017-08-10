

describe Game do
  let(:player) { double('Player', pick_cell: 'top one', token: 'X') }
  let(:parser) { double('Parser') }
  let(:board) { double('Board', display: nil, fill_cell_at: nil) }
  let(:rules) { double('Rules', all_cell_pick_checks: nil) }
  subject(:game) { described_class.new(player, board, rules) }

  describe 'attributes' do
    context 'on init' do
      it 'will hold a board instance' do
        expect(game.board).to be(board)
      end

      it 'will hold a player instance' do
        expect(game.player).to be(player)
      end
    end
  end
end
