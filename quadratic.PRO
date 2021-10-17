domains
number = Real

predicates
solve(number,number,number)

clauses

solve(A,B,C) :-
D = (B*B) - (4*A*C),
D >= 0,
S1 = (-B + sqrt(D)) / (2*A),
S2 = (-B - sqrt(D)) / (2*A),
write("Solutions are ",S1," and ",S2,"."),nl.

solve(A,B,C) :-
write("Solutions are Imaginary").

/* 
IF ELSE NOT WORKING
( D < 0
=>write("Solutions are Imaginary)
;   S1 = (-B + sqrt(D)) / (2*A),
  S2 = (-B - sqrt(D)) / (2*A),
  write("Solutions are Real and equal to ",S1," and ",S2,".") 
). 
*/

