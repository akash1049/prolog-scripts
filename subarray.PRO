domains
list=integer*

predicates
subarr(list,list)
pref(list,list)

clauses

subarr([],[]).

subarr([_|MTail],STail) :-
subarr(MTail,STail).

subarr([M|MTail],[M|STail]):-
pref(MTail,STail).

pref(_,[]).

pref([M|MTail], [M|STail]):-
pref(MTail,STail).