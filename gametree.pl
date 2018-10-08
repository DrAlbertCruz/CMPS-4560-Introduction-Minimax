% Illustrative 3-ply game tree modified
% from Ivan Bratko's book

moves(a,[b,c]).
moves(b,[d,e]).
moves(c,[f,g]).

utility(P,V) :- 
    utility1(P,V), 
    write('utility at node '),writeln(P=V).

utility1(d,1).
utility1(e,4).
utility1(f,5).
utility1(g,6).

max(a).
max(d).
max(e).
max(f).
max(g).

min(b).
min(c).

