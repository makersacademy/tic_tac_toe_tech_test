class Board
  attr_reader :grid

  def initialize
    @grid = [["","",""],
             ["","",""],
             ["","",""]]
  end

  def createGrid(grid)
    @grid
  end

  def printGrid(grid)
    @grid.each do |row|
      puts row.join(" ")
    end
  end
end
