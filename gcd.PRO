domains
number = integer

predicates
gcd(number,number,number)

clauses

gcd(A,0,A):-
A > 0, !.

gcd(A,B,C):- 
A >= B, 
A1 = A - B, 
gcd(A1,B,C).

gcd(A, B, C):- 
A < B, 
B1 = B - A, 
gcd(B1,A,C).