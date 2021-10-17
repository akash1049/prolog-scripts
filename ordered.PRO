domains
list=integer*

predicates
ordered(list)

ordered([]).

ordered([_]).

ordered([H,H1|T]) :- 
H <= H1, 
ordered( [H1|T] ).