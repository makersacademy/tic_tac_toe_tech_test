# Understands how to apply the rules of tic-tac-toe to a grid

require 'matrix'

class Rules
  def initialize; end

  def check_valid_move(i, board)
    check_valid_cell(i, board)
    check_untaken_cell(i, board)
  end

  def draw?(board)
    board.grid.all? { |row| row.all? { |cell| cell != :' ' } }
  end

  def victory?(board)
    return true if row_win?(board)
    return true if col_win?(board)
    return true if left_diagonal_win?(board.grid)
    return true if right_diagonal_win?(get_rotated_grid_of(board))
  end

  private

  def check_valid_cell(i, board)
    unless board.grid[i[PositionParser::ROW]][i[PositionParser::COL]]
      puts "That's not a valid cell"
    end
  end

  def check_untaken_cell(i, board)
    if board.grid[i[PositionParser::ROW]][i[PositionParser::COL]] == :X ||
       board.grid[i[PositionParser::ROW]][i[PositionParser::COL]] == :O
      puts 'That cell is already taken'
    end
  end

  def get_diagonal_of(board_grid)
    Matrix.rows(board_grid).each(:diagonal).to_a
  end

  def get_rotated_grid_of(board)
    board_clone = Marshal.load(Marshal.dump(board))
    board_clone.grid[0].reverse!
    board_clone.grid[2].reverse!
    board_clone.grid
  end

  def left_diagonal_win?(board_grid)
    victory(get_diagonal_of(board_grid))
  end

  def right_diagonal_win?(grid_clone)
    victory(get_diagonal_of(grid_clone))
  end

  def victory(cells)
    cells == %i[X X X] || cells == %i[O O O]
  end

  def row_win?(board)
    board.grid.any? { |row| victory(row) }
  end

  def col_win?(board)
    board.grid.transpose.any? { |col| victory(col) }
  end
end
