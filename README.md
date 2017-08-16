# Tic-Tac-Toe tech test

## Specification

* Write a program that lets two humans play Tic-Tac-Toe against each other.
* Implement a command line interface that lets the humans play the game by typing commands into the terminal.
* Players should be able to input their moves.
* The board should be shown after each move.
* The game should announce the result of the game when it's over.

## My Approach

As with the last tech test my priority was to output high quality code as I would aim to do in a real tech test.  My first step was to read the specification and look at the domain language.  I diagrammed three classes: Game, Player and Board and considered how I would like them to interact.  In order to adhere to the Law of Demeter, I decided that I wanted Game to have knowledge of the other two classes but for Player and Board to have no knowledge of Game. The greatest challenge was creating the logic to calculate a winning move and this was the part of the problem that I enjoyed the most.  I started with very basic logic for this calculation and refactored several times to get a DRY-er block of code and a more elegant solution.

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

