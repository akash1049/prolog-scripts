domains
alpha=char
list=char*

predicates
insert(list,alpha,list)
pallin(list,list)

clauses

insert([],X,[X]).

insert([H|T],X,[H|T1]):-
insert(T,X,T1).

pallin([X],[X]).

pallin([H|T],[H|T1]):-
pallin(T,T2),
insert(T2,H,T1).
