# spec/cell_spec.rb
require 'cell'

describe Cell do
  let(:cell) { described_class.new }

  describe '#initialize' do
    context 'creating values for a cell on initialization' do
      it 'initializes with a default value' do
        expect(cell.value).to eq ''
      end

      it 'can be initialized with a value of X' do
        cell = Cell.new('X')
        expect(cell.value).to eq 'X'
      end

      it 'can be initialized with a value of O' do
        cell = Cell.new('O')
        expect(cell.value).to eq 'O'
      end
    end
  end
end
