
class Rules

  attr_reader :valid_cells

  def initialize
    @valid_cells = ["top one", "top two", "top three",
                    "mid one", "mid two", "mid three",
                    "low one", "low two", "low three"]
  end

  def valid_cell?(user_input)
    valid_cells.include?(user_input)
  end

end
