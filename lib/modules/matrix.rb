
module MyMatrix

  require "matrix"

  def rotate
    Matrix[*to_a.map(&:reverse).transpose]
  end

  def get_diagonal_of(board)
      Matrix.rows(board.grid).each(:diagonal).to_a
  end

end
