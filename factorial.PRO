domains
number = Integer

predicates
factorial(number,number)

clauses

factorial(0,1).

factorial(X,Ans) :-
X >= 0,
X1 = X - 1,
factorial(X1,A1),
Ans = N * A1.

