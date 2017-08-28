
describe Messages do
  subject(:messages) { described_class.new }

  describe '#make_choice' do
    it 'will print a string asking for a cell' do
      expect { messages.make_choice }.to output("Pick a cell\n").to_stdout
    end
  end
  describe '#draw' do
    it 'will print a string declaring draw' do
      expect { messages.draw }.to output("The game is a draw! Why not play again?\n").to_stdout
    end
  end
  describe '#win' do
    it 'will print a string declaring victory' do
      expect { messages.win }.to output("Current player wins :)\n").to_stdout
    end
  end
end
