require './lib/game.rb'

player1 = Player.new(:Tom, :X)
player2 = Player.new(:Jerry, :O)
board = Board.new()

game = Game.new(player1, player2, board)

game.print_board
game.decide_first_player
game.current_player
game.switch_players
