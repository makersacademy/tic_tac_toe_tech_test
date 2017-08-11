require 'board'

describe Board do

  describe '#initialize' do
    it 'initializes with 9 possible positions' do
      expect(subject.grid.flatten.length).to eq(9)
    end

    it 'initializes with rows of equal length' do
      expect(subject.grid[0].length).to eq(3)
      expect(subject.grid[1].length).to eq(3)
      expect(subject.grid[2].length).to eq(3)
    end

    it 'all positions start as true' do
      flattened_grid = subject.grid.flatten
      expect(flattened_grid.all? { |x| x == flattened_grid[0] })
    end

    it 'can print the board for the players' do
      expect { subject.print }.to output("[true, true, true]\n[true, true, true]\n[true, true, true]\n").to_stdout
    end
  end
end
