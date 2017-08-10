# Tic-Tac-Toe tech test

## User Stories
```
As a user.
So that I can relax after a long day of work.
I want to be able to play a game of Tic-Tac-Toe with my friend.

As a user.
So that I can win a game of Tic-Tac-Toe.
I want to be able to make my choice by typing a command into the terminal.

As a user.
So that I can see the move I have played.
I want to be able to see the board after each move.

As a user.
So that I can play a game of Tic-Tac-Toe with my friend.
I want to be able to take turns.

As a user.
So that I know if I have won a game of Tic-Tac-Toe.
I want to be able to see the winner announced when the game is over.
```

## Requirements

* Your goal is to write a program that lets two humans play Tic-Tac-Toe against each other.
* Implement a command line interface that lets the humans play the game by typing commands into the terminal.
* Players should be able to input their moves.
* The board should be shown after each move.
* The game should announce the result of the game when it's over.

### Rules of Tic-Tac-Toe

```
O X X
X X O
O X O
```

* There are two players in the game (X and O).
* The board is 9 positions in a 3x3 grid.
* Players take turns until the game is over.
* A player can claim a position if it is not already taken.
* A turn ends when a player claims a position.
* A player wins if they make a line by claiming 3 boxes in a row, 3 positions in a column, or 3 positions in a diagonal.
* If all positions are taken and neither player has a line, the game is a draw.
