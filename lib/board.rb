
class Board
  attr_reader :grid

  def initialize
    @grid = [[[], [], []],
             [[], [], []],
             [[], [], []]]
  end

  def display; end

  def fill_cell_at(index, player)
    grid[index[0]][index[1]].push(player.token)
  end
end
