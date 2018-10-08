# CMPS-4560-Introduction-Minimax
CMPS 4560: Understanding minimax in Prolog

# Required

* SWI-Prolog
* Files in this repo:
```shell
$ git https://github.com/DrAlbertCruz/CMPS-4560-Introduction-Minimax.git
$ cd CMPS-4560-Introduction-Minimax
```

# Introduction

In this lab we will investigate an implementation of minimax in Prolog. You will be given working source code for minimax, and your task is to: (1) understand the implementation and (2) set up a game tree and process the optimal set of actions with minimax. *Ambitious students are encouraged to implement minimax on their own, but this is not required.*

# Approach

Study the implementation of minimax. There are questions to be answered later on in the discussion. Fire up the implementation of minimax consulting both minimax.pl and gametree.pl:



Carry out minimax with:

minimax( a, B, C ).

It will start at node a and give you the result of minimax search.

After studying the implementation, construct 4 ply game tree. Ply is the number of turns, so this means the tree should be depth 4. Let the game tree be a full binary tree with the following utility values:

1 0 0 1 -1 1 -1 1

Utility values are the value assigned to the terminal states. For this example we are using the utility values from chess. Recall that you either win (1), draw (0) or lose (-1).
Questions

The turn-in for this lab is a short report on your findings. Answer the following questions:

    Give the result of carrying out the minimax on the game tree by hand and verify that your work and the code gives the same result.
    Is it possible to win the game?
    Why is a cut necessary on line 16?
    How does best_move return the most optimal move?
    How does the min/max handoff occur in the code?

 
