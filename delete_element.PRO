domains
list = integer*

predicates
del(integer,list,list)

clauses

del(H,[H|Tail],Tail).
del(H,[H1|Tail],[H1|Tail1]):-
del(H,Tail,Tail1).