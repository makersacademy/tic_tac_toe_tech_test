# Tic-Tac-Toe tech test

```
O X X
X X O
O X O
```

## Spec ##
* There are two players in the game (X and O).
* The board is 9 positions in a 3x3 grid.
* Players take turns until the game is over.
* Players can input their moves via a CL interface
* A player can claim a position if it is not already taken.
* A turn ends when a player claims a position.
* The board should be shown after each move.
* A player wins if they make a line by claiming 3 boxes in a row, 3 positions in a column, or 3 positions in a diagonal.
* If all positions are taken and neither player has a line, the game is a draw.
* The game should announce the result of the game when it's over.


## Play ##

Run the following commands:

```
$ git clone git@github.com:jkingharman/tic_tac_toe_tech_test.git
$ cd tic_tac_toe_tech_test
$ bundle
$ cd lib
$ irb
$ require_relative ‘play’
```

## Test ##

Run the following commands:

```
$ rspec
```

## IRB Example ##

```
JKHs-MBP:lib jkh$ irb
2.3.3 :001 > require_relative "play"
Pick a cell
top one
|X| | |
| | | |
| | | |
Pick a cell
mid two
|X| | |
| |O| |
| | | |
Pick a cell
```

## Testing Coverage ##

```
JKHs-MacBook-Pro:tic_tac_toe_tech_test jkh$ rspec -fd

Board
  #display
    prints the grid to stdout
  #fill_at
    will insert the player's token into the specified cell

Messages
  #make_choice
    will print a string asking for a cell
  #draw
    will print a string declaring draw
  #win
    will print a string declaring victory

Player
  attributes
    will have X for a token

PositionParser
  #map_cell_to_index
    returns the index of the user's cell choice

Rules
  #check_valid_move
    when user input maps to an untaken grid cell
      will return nil
    when user input doesn't map to a valid grid cell
      will say so
    when user input maps to a valid but taken grid cell
      will raise an error saying so
  #draw?
    when every cell on the board is taken
      will return true
    when board has at least one empty cell
      will return false
  #victory?
    when the same symbol marks three cells in a row
      will return true
    when the same symbol marks three cells in one col
      will return true
  when the same symbol marks a natural diagonal
    will return true

Finished in 0.01027 seconds (files took 0.16641 seconds to load)
15 examples, 0 failures

Coverage report generated for RSpec to /Users/jkh/Desktop/Projects_Two/tic_tac_toe_tech_test/coverage. 77 / 77 LOC (100.0%) covered.
```

## My Approach ##

I took a domain-driven approach to this tech test and worked outside-in. My first step therefore was to breakdown the acceptance spec into some user stories:

```
As a user,
So that there is competition,
I want the game to be two player.

As a user,
So that the game is fair,
I want to alternate goes with my opponent

As a user,
So that I can make a move,
I want to pick a position via the CL

As a user,
So that the game is fair,
I want to be stopped from taking a occupied square

As a user,
So that I know how I’m doing,
I want the board to be printed between goes

As a user,
So that I can win,
I want tic-tac-toe’s win conditions to apply

As a user,
So that I know outcome of the game,
I want to be presented with that news at game’s end
```

## Domain Modeling ##

From these user stories, I then took steps towards building my first conceptual model of the app. The goal was to pinpoint the main units in the domain and their responsibilities:

* __Game__ - Understands how to play one whole game of tic-tac-toe.
* __Board__ - Understands how to represent the configuration of player’s moves.
* __Rules__ - Understands how to apply the rules of tic-tac-toe to a grid.
* __Player__ - Understands how to get user-input from the player.
* __Position Parser__ - Understands how to convert a natural statement of a board position into a formal one.

## Challenges ##

* __Win conditions__ - I was stuck trying to evaluate the anti-diagonal. My solution: clone the board, mutate it so that anti-diagonal becomes a leading-diagonal, then call my existing diagonal check method. With more time, I'd definitely search for a less expensive solution.

* __Unit boundaries__ - Some units do too much. For instance, ‘Board’ properly updates a 2d array, which tracks player’s moves. But currently it also prints this array to stdout, a presentation concern belonging elsewhere. ‘Game’ is another imperfectly defined unit. It passes the player objects tokens, for example, though really token generation should be internal to those objects.

## TODOs ##

My priority is to better architect the app. I'd extract with the aim of applying Sandi Metz's advice [here](https://www.youtube.com/watch?v=8bZh5LMaSmE).
