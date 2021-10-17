domains
number=integer
list=integer*

predicates
insert(number,list,list)

clauses

insert(X,[],[X]).

insert(X,[H|T],[H|T1]):-
H = X,
!,
T1 = T.

insert(X,[H|T],[H|T1]):-
insert(X,T,T1).
