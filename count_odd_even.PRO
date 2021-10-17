domains
item = integer
list = item*

predicates

count(list,integer,integer)

clauses

count([],0,0).
count([H|T],X,Y) :- 1 = H mod 2,count(T,X,P), Y = P + 1,!.
count([H|T],X,Y) :- 0 = H mod 2, count(T,P,Y), X = P +1, !.