domains
person=symbol

predicates
parent(person,person)
husband(person,person)
wife(person,person)
mother(person,person)
father(person,person)
couple(person,person)
female(person)
male(person)
son(person,person)
daughter(person,person)
sibling(person,person)
brother(person,person)
sister(person,person)
elder(person,person)
uncle(person,person)
aunt(person,person)
nephew(person,person)
niece(person,person)
parentinlaw(person,person)
fatherinlaw(person,person)
motherinlaw(person,person)
childinlaw(person,person)
soninlaw(person,person)
daughterinlaw(person,person)

clauses

couple(harivanshRaiBachchan,tejiBachchan).
couple(amitabhBachchan,jayaBachchan).
couple(ramolaBachchan,ajitabhBachchan).
couple(abhishekBachchan,aishwaryaBachchan).
couple(swethaNanda,nikhilNanda).

parent(tejiBachchan,amitabhBachchan).
parent(tejiBachchan,ajitabhBachchan).
parent(aishwaryaBachchan,aradhyaBachchan).
parent(swethaNanda,navyaNaveli).
parent(swethaNanda,agastyaNanda).
parent(ramolaBachchan,bhimBachchan).
parent(ramolaBachchan,namrataBachchan).
parent(ramolaBachchan,nainaBachchan).
parent(ramolaBachchan,nilimaBachchan).
parent(harivanshRaiBachchan,amitabhBachchan).
parent(harivanshRaiBachchan,ajitabhBachchan).
parent(abhishekBachchan,aradhyaBachchan).
parent(nikhilNanda,navyaNaveli).
parent(nikhilNanda,agastyaNanda).
parent(ajitabhBachchan,bhimBachchan).
parent(ajitabhBachchan,namrataBachchan).
parent(ajitabhBachchan,nainaBachchan).
parent(ajitabhBachchan,nilimaBachchan).

male(harivanshRaiBachchan).
male(amitabhBachchan).
male(ajitabhBachchan).
male(abhishekBachchan).
male(nikhilNanda).
male(bhimBachchan).
male(agastyaNanda).

female(tejiBachchan).
female(jayaBachchan).
female(ramolaBachchan).
female(aishwaryaBachchan).
female(swethaNanda).
female(namrataBachchan).
female(nainaBachchan).
female(nilimaBachchan).
female(aradhyaBachchan).
female(navyaNaveli).

husband(H,W):- couple(H,W), male(H).
wife(W,H):- couple(W,H), female(W).

father(F,C):- parent(F,C), male(F).
mother(M,C):- parent(M,C), female(M).

son(S,P):- parent(P,S), male(S).
daughter(D,P):- parent(P,D), female(D).

sibling(S1,S2):- parent(P,S1), parent(P,S2), S1<>S2.
brother(B,S):- sibling(B,S), male(B).
sister(S,B):- sibling(S,B), female(S).

elder(E,C):- sibling(E,P), parent(P,C).
uncle(U,C):- elder(U,C), male(U).
aunt(A,C):- elder(A,C), female(A).

nephew(N,E):- elder(E,N), male(N).
niece(N,E):- elder(E,N), female(N).

parentinlaw(P,C):- parent(P,T), couple(T,C).
fatherinlaw(F,C):- parentinlaw(F,C), male(F).
motherinlaw(M,C):- parentinlaw(M,C), female(M).

childinlaw(C,P):- parentinlaw(P,C).
soninlaw(S,P):- childinlaw(S,P), male(S).
daughterinlaw(D,P):- childinlaw(D,P), female(D).

