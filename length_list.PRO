domains
number=integer
list=integer*

predicates
callen(list)
len(list,number)

clauses
	
callen(List):-
len(List , N),
write("Length of the list is ",N,"."),nl.

len([], 0).

len( [H|T] , L):-
len(T,L1),
L = L1+1.