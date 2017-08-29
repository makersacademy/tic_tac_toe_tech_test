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
