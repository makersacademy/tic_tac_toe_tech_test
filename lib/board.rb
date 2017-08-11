class Board

  attr_reader :grid

  def initialize
    @grid = [["*", "1", "2", "3"],
            ["1", "-", "-", "-"],
            ["2", "-", "-", "-"],
            ["3", "-", "-", "-"]
          ]
  end


end
