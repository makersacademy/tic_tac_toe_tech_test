
describe Rules do
  subject(:rules) { described_class.new }

  let(:valid_index) { [0, 0] }
  let(:board) do
    double('Board', grid: [[[], [], []],
                           [[], [], []],
                           [[], [], []]])
  end

  describe '#check_valid_move' do
    context 'when user input maps to an untaken grid cell' do
      it 'will return nil' do
        expect(rules.check_valid_move(valid_index, board)).to be nil
      end
    end

    context "when user input doesn't map to a valid grid cell" do
      let(:invalid_index) { [0, 5] }

      it 'will raise an error saying so' do
        expect { rules.check_valid_move(invalid_index, board) }.to raise_error("That's not a valid cell")
      end
    end

    context 'when user input maps to a valid but taken grid cell' do
      before do
        board.grid[0][0] = 'X'
      end

      it 'will raise an error saying so' do
        expect { rules.check_valid_move(valid_index, board) }.to raise_error('That cell is already taken')
      end
    end
  end

  describe '#draw?' do
    context 'when every cell on the board is taken' do
      let(:full_board) do
        double('Full-board', grid: [[['X'], ['X'], ['X']],
                                    [['X'], ['X'], ['X']],
                                    [['X'], ['X'], ['X']]])
      end

      it 'will return true' do
        expect(rules.draw?(full_board)).to be true
      end
    end

    context 'when board has at least one empty cell' do
      it 'will return false' do
        expect(rules.draw?(board)).to be false
      end
    end
  end

  describe '#victory?' do
    context 'when the same symbol marks three cells in a row' do
      let(:horizontal_win_board) do
        double('H-win-board', grid: [[['X'], ['X'], ['X']],
                                     [[], [], []],
                                     [[], [], []]])
      end

      it 'will return true' do
        expect(rules.victory?(horizontal_win_board))
      end
    end

    context 'when the same symbol marks three cells in one col' do
      let(:col_win_board) do
        double('C-win-board', grid: [[['X'], [], []],
                                     [['X'], [], []],
                                     [['X'], [], []]])
      end

      it 'will return true' do
        expect(rules.victory?(col_win_board))
      end
    end

    context 'when there no win condition obtains' do
      let(:unfinished_board) do
        double('unfinished-board', grid: [[['X'], ['Y'], ['X']],
                                          [['X'], ['X'], ['Y']],
                                          [['Y'], ['X'], ['Y']]])
      end

      it 'will return nil' do
        expect(rules.victory?(unfinished_board)).to be nil
      end
    end
  end


  describe "#left_diagonal_win?" do

    context "when the same symbol marks a natural diagonal" do

      let(:left_dia) { [[['X'], [], []],
                       [[], ['X'], []],
                       [[], [], ['X']]] }

      it "will return true" do
        p expect(rules.left_diagonal_win?(left_dia))
      end

    end

  end


end
