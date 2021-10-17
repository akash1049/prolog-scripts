domains
number = real

predicates
power(number,number,number)

clauses

power(X,1,X).

power(X,P,Y):- 
P > 1,
P1 = P - 1,
power(X,P1,Y1),
Y = X * Y1.