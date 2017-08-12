require './lib/game.rb'

player1 = Player.new(:Tom, :X)
player2 = Player.new(:Jerry, :O)
board = Board.new()

game = Game.new({player1: player1, player2: player2, board: board })

game.print_board
game.current_player

board.winning_combinations

game.make_move
game.print_board


game.switch_players
