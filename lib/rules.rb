
class Rules

  attr_reader :valid_cells

  def initialize
    @valid_cells = ["top one", "top two", "top three",
                    "mid one", "mid two", "mid three",
                    "low one", "low two", "low three"]
  end

  def valid_cell?(user_input)
    fail "That's not a valid cell" unless valid_cells.include?(user_input)
  end

  def all_cell_pick_checks(user_input)
    valid_cell?(user_input)
  end

end
