require 'game'

describe Game do

  let(:mock_grid) { ["-", "-", "-", "-", "-", "-", "-", "-", "-"] }
  let(:second_grid) { [":x", "-", "-", ":x", "-", "-", "-", "-", "-"] }
  let(:third_grid) { [':o', ':x', ':o', ':x', ':x', ':o', '-', ':o', ':x'] }
  let(:player1) { double(symbol: :x) }
  let(:player2) { double(symbol: :o) }
  let(:board) { double(grid: mock_grid, space_exist?: true, space_is_free?: true, drawing_move?: false, winning_move?: false) }
  let(:second_board) { double(grid: second_grid, space_exist?: true, space_is_free?: true, drawing_move?: false, winning_move?: true) }
  let(:third_board) { double(grid: third_grid, space_exist?: true, space_is_free?: true, drawing_move?: true, winning_move?: false) }
  let(:game) { described_class.new(board, player1, player2) }
  let(:second_game) { described_class.new(second_board, player1, player2) }
  let(:third_game) { described_class.new(third_board, player1, player2) }

  describe '#initialize' do
    it 'initializes with a board' do
      expect(game.board).to_not eq(nil)
    end

    it 'initializes with two players' do
      expect(game.players.length).to eq(2)
    end

    it 'player1 starts as the current player' do
      expect(game.current_player).to eq(player1)
    end
  end

  before do
    allow(board).to receive(:print)
  end

  describe '#make_move' do
    it 'allows a player to make a move' do
      game.make_move(0)
      expect(game.board.grid[0]).to eq(:x)
    end

    it 'switches the current player after a move' do
      game.make_move(0)
      expect(game.current_player).to eq(player2)
    end

    it 'allows players to take alternate turns' do
      game.make_move(0)
      game.make_move(1)
      expect(game.board.grid[1]).to eq(:o)
    end

    it 'allows a player to pick a free space only' do
      game.make_move(0)
      allow(board).to receive(:space_is_free?).with(0).and_return(false)
      expect { game.make_move(0) }.to raise_error('Space taken!')
    end

    it 'allows a player to pick an existing space only' do
      allow(board).to receive(:space_exist?).with(29).and_return(false)
      expect { game.make_move(29) }.to raise_error('Choose between 0 and 8')
    end

    it 'tells the players if there is a winner' do
      allow(second_board).to receive(:print)
      expect { second_game.make_move(6) }.to output("Win!\n").to_stdout
      expect(second_game.board.grid[6]).to eq(:x)
    end

    it 'tells the players if the game is a draw' do
      allow(third_board).to receive(:print)
      expect { third_game.make_move(5) }.to output("Draw! Start a new game.\n").to_stdout
      expect(third_game.board.grid[5]).to eq(:x)
    end
  end
end
