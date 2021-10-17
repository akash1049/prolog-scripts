domains
x = integer
list = integer*

predicates
findlist(list,x)
go

clauses
go:-
write("Enter List: "),nl.

findlist([],L):-
write("Element not found."),nl.

findlist([X|List],1):-
write("The element is ",X),nl.

findList([X|List],L):-
L1 = L - 1,
findlist(List,L1).