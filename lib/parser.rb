
class Parser

  def initialize
  end

  def hashify_(choice)
    split_choice = choice.strip.split(' ')
    {row: split_choice[0], cell_num: split_choice[1]}
  end

end
