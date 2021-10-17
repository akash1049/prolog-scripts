database
employee(string,integer,string,string,integer,char)

predicates
add
remove
find_salary
run
salary_class(char,Real)

clauses

run:-
retractall(employee(_,_,_,_,_,_)),
assertz(employee("A",101,"Accounts","Asst Manager",34,'B')),
assertz(employee("B",102,"Accounts","Manager",40,'A')),
assertz(employee("C",103,"Accounts","Field Officer",27,'C')).

add:-
write("NAME OF EMPLOYEE: "),nl,
        readln(EMP),
       write("EMPLOYEE CODE: "),nl,
        readint(EMPCODE),
       write("EMPLOYEE DEPT: "),nl,
        readln(EMPDEPT),
       write("EMPLOYEE DESIGNATION: "),nl,
        readln(EMPDES),
       write("EMPLOYEE AGE: "),nl,
        readint(EMPAGE),
       write("EMPLOYEE SALARY CLASS: "),nl,
        readchar(EMPCLASS),
       assertz(employee(EMP,EMPCODE,EMPDEPT,EMPDES,EMPAGE,EMPCLASS)).
        
remove:- write("ENTER NAME"),
readln(A),
retract(employee(A,_,_,_,_,_)).

find_salary:-
write("ENTER NAME"),
readln(A),
employee(A,_,_,_,_,Y),
salary_class(Y,Z),
X= Z+ Z*0.15,
write("TOTAL SALARY IS ",X).

salary_class('A',35000).
salary_class('B',25000).
salary_class('C',15000).


