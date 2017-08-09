


class Board

  attr_reader :grid

  def initialize
    @grid = {top: {one:[],two:[],three:[]},
             mid: {one:[],two:[],three:[]},
             low: {one:[],two:[],three:[]}}
  end

  def display
    # return when you know format for the grid
    print 'x'
  end

  def fill_cell_at(position, current_player)
    grid[position[:row].to_sym][position[:cell_num].to_sym].push(current_player.token)
  end


end
