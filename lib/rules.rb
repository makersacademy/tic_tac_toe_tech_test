
  require "matrix"

class Rules
  def initialize; end

  def check_valid_move(index, board)
    check_valid_cell(index, board)
    check_untaken_cell(index, board)
  end

  def draw?(board)
    board.grid.all? { |row| row.all? { |cell| !cell.empty? } }
  end

  def victory?(board)
    return if row_win?(board)
    return if col_win?(board)
  end

  def get_diagonal_of(board)
     Matrix.rows(board).each(:diagonal).to_a
  end

  def left_diagonal_win?(board)
     victory(get_diagonal_of(board))
  end

  private

  def check_valid_cell(index, board)
    raise "That's not a valid cell" unless board.grid[index[0]][index[1]]
  end

  def check_untaken_cell(index, board)
    raise 'That cell is already taken' unless board.grid[index[0]][index[1]].empty?
  end

  def victory(cells)
    cells == [['X'], ['X'], ['X']] || cells == [['O'], ['O'], ['O']]
  end

  def row_win?(board)
    board.grid.any? { |row| victory(row) }
  end

  def col_win?(board)
    board.grid.transpose.any? { |col| victory(col) }
  end
end
