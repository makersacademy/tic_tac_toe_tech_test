describe Game do

  let (:game) { Game.new }

  describe '#initialise' do
    it 'initialises with a new board' do
      expect(game.board.class).to eq Board
    end
  end
end
