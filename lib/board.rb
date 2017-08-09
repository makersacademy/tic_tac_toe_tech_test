


class Board

  attr_reader :grid

  def initialize
    @grid = {top: {one:[],two:[],three:[]},
             mid: {one:[],two:[],three:[]},
             low: {one:[],two:[],three:[]}}
  end

  def display
    print 'x'
  end

  def fill_cell_at(row, cell_num, current_player)
    grid[row][cell_num] = current_player.token
  end


end
