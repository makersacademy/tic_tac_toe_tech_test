# Tic-Tac-Toe tech test

## Specification

* Write a program that lets two humans play Tic-Tac-Toe against each other.
* Implement a command line interface that lets the humans play the game by typing commands into the terminal.
* Players should be able to input their moves.
* The board should be shown after each move.
* The game should announce the result of the game when it's over.

## My Approach

My priority for this test was the production of high quality code.  With this in mind I spent some time diagraming possible architectures and decided on three units: a board, a game and a player.  These all have separate responsibilities and the programme adheares to the Law of Demeter.  Only the Game class has any knowledge of the other classes. The greatest challenge was writing the logic to check if a move was a winning move. I enjoyed this part of the problem the most and ended up with a refactored solution. 

## Technologies Used

Ruby, Rspec, Rubocop (linter) and Coverall.

## How to run the programme

* Fork this repo
* Open terminal
* Require necessary files and instantiate a new game:

![ScreenShot](http://imgur.com/S2kGqZe.jpg)

* Make moves alternating between Player 1 and Player 2:

![ScreenShot](http://imgur.com/WSJcAMl.jpg)

* Win, draw or lose:

![ScreenShot](http://imgur.com/5ph80On.jpg)


## Test Coverage

I have 100% coverage according to Coverall:

![ScreenShot](http://imgur.com/3GXnQYP.jpg)

