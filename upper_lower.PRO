domains
number = integer

predicates
range
solve(number,number)

clauses
solve(A,B):-
A1 = A + 1,
A1<B,
write(A1),nl,
solve(A1,B).

range :- 
write("Give lower limit."),nl,
readint(L1),
write("Give upper limit."),nl,
readint(L2),
solve(L1,L2).