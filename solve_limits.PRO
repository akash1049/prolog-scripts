domains
var = integer
predicates
solve(integer,integer)
find(integer,integer,integer)

clauses
solve(Y,Z) :- Y<=Z , write(Y),nl, Y1 = Y+1, solve(Y1,Z).
find(X,Y,Z) :- X<=Z, Y = X, solve(Y,Z).