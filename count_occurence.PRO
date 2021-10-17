domains
item = symbol
list = item*
predicates
count(list,item,integer)

clauses

count([],X,0).
count([H|T],X,Y):- X = H, count(T,X,Z), Y = Z + 1, !.
count([H|T],X,Y):- count(T,X,Y).