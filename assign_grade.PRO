domains
grade = symbol
marks = integer

predicates

arrange(grade,marks)

clauses

arrange(ab,X) :- X>=90,!.
arrange(ab,X) :- X>=80,!.
arrange(bb,X) :- X>=70,!.
arrange(bc,X) :- X>=60,!.
arrange(cc,X) :- X>=50,!.
arrange(cd,X) :- X>=40,!.
arrange(dd,X) :- X>=30,!.
arrange(ff,X).
