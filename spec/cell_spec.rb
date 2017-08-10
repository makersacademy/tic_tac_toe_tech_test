describe Cell do

  let (:cell) { Cell.new }

  describe '#initialise' do
    it 'is initialised with an empty string as default' do
      expect(cell.value).to eq ''
    end

    it 'can be initialised with a value of X' do
      cell_x = Cell.new('X')
      expect(cell_x.value).to eq 'X'
    end
  end
end
