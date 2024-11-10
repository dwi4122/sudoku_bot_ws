x(1..100).
y(1..100).
n(1..100).

{sudoku(X,Y,N): n(N)} = 1 :- x(X),  y(Y).

subgrid(X,Y,A,B) :- x(X), x(A), y(Y), y(B),(X-1)/4 == (A-1)/4, (Y-1)/4 == (B-1)/4.

:- sudoku(X,Y,N), sudoku(A,Y,N), X!=A.
:- sudoku(X,Y,N), sudoku(X,B,N), Y!=B.
:- sudoku(X,Y,V), sudoku(A,B,V), subgrid(X,Y,A,B), X != A, Y != B.
