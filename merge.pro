domains
num=integer
list=integer*

predicates
merge(list,list,list)

clauses

merge([],[],[]).

merge(X,[],X):- 
!.

merge([],X,X):-
!.

merge([X|L1],[Y|L2],[X|L]):-
X <= Y,
merge(L1,[Y|L2],L),
!.

merge([X|L1],[Y|L2],[Y|L]):-
merge([X|L1],L2,L).