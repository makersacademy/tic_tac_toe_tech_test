require 'board'

describe Board do

  describe '#initialize' do
    it 'initializes with 9 possible positions' do
      expect(subject.grid.length).to eq(9)
    end

    it 'all positions start as "-"' do
      expect(subject.grid.all? { |x| x == subject.grid[0] && subject.grid[0] == '-' })
    end
  end

  describe '#print' do
    it 'can print the board for the players' do
      expect { subject.print }.to output("|-|-|-|\n|-|-|-|\n|-|-|-|\n").to_stdout
    end
  end

  describe '#space_is_free?' do
    it 'checks to see if a space is free' do
      expect(subject.space_is_free?(1)).to eq(true)
    end
  end

  describe '#winning_move?' do
    it 'checks to see if a move is a winner' do
      expect(subject.winning_move?).to eq(false)
    end
  end

  describe '#drawing_move?' do
    it 'checks to see if a game is a draw' do
      expect(subject.drawing_move?).to eq(false)
    end
  end
end
