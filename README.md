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

Study the implementation of minimax. There are questions to be answered later on in the discussion. Fire up `swipl` and consult both minimax.pl and gametree.pl:

```prolog
?- ['gametree.pl'].
true.
?- ['minimax.pl'].
true.
```

Test out minimax by calling `minimax/3`. The first argument is the starting node. The second argument is the sucessor. The sucessor is the move that max will take having considered how the game will play out over a certain number of plys. The third argument is the utility value, which is the cost that max believes it can achieve if it takes the move defined by sucessor.

```prolog
?- minimax(a,S,C).
utility at node d=1
utility at node e=4
utility at node f=5
utility at node g=6
S = c,
C = 5.
```

Thus, minimax believes the bset move is to take move `c` from `a`, and that it can achieve a cost value of `5` by  taking this move. After studying the implementation (don't forget to look at both files), construct 4 ply game tree. Ply is the number of turns, so this means the tree should be depth 4. Let the game tree be a full binary tree with the following terminal values:

```
1 0 0 1 -1 1 -1 1
```

Utility values are the value assigned to the terminal states. For this example we are using the utility values from a zero-sum game that also allows draws. Recall that you either win (1), draw (0) or lose (-1).

# Discussion

The turn-in for this lab is a short report on your findings. Answer the following questions:

1. Give the result of carrying out the minimax on the game tree by hand and verify that your work and the code gives the same result.
2. Is it possible to win the game?
3. Why is a cut necessary on line 16?
4. How does best_move return the most optimal move?
5. How does the min/max handoff occur in the code?
6. In the next lab we will apply this code to Tic Tac Toe. Describe in general how `gametree.pl` would be modified to facilitate this search.
 
