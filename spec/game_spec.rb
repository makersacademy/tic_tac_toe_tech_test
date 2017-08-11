describe Game do

  let (:game) { Game.new }

  describe '#initialise' do
    it 'initialises with a new board' do
      expect(game.board.class).to eq Board
    end
  end

  describe '#play' do
    before do
      $stdin = StringIO.new('1')
    end

    it 'can switch starting player to O' do
      game.play
      expect(game.player_o_turn).to eq true
    end

    it 'can switch starting player to X' do
      game.play
      $stdin = StringIO.new('2')
      game.play
      expect(game.player_o_turn).to eq false
    end

    it 'displays player turn, requests player move and prints grid' do
      expect{ game.play }.to output("Player O turn\nEnter number from 1-9 to make your move\nO - -\n- - -\n- - -\n").to_stdout
    end
  end
end
