# Tic-Tac-Toe

A CLI version of tic-tac-toe :)

## What's it do? ##

* Players can input moves on the CL.
* Players can take free squares only.
* The board is shown after each move.
* A win or draw will be determined.
* The game's outcome will be shown.

## How do I get started? ##

Checkout the code, launch a ruby REPL (IRB e.g), then ```require_relative "play"```.
You can run the tests if you want with ```rspec```.

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
low three
|X| | |
| |O| |
| | |X|
```

## Any Challenges? ##
* __Unit boundaries__ - Some units do too much. For instance, ‘Board’ properly updates a 2d array, which tracks players' moves. But currently it also prints this array to stdout, a presentation concern belonging elsewhere. ‘Game’ is another example. It passes the player objects tokens though really token generation should be internal to those objects.

## Todos ##
The game doesn't handle invalid player input currently. This'll be the first thing I add with time.
