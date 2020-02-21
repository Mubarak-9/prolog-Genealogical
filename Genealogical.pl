male(ajose).
male(adeshina).
male(salam).
male(mubarak).
male(farouk).
male(suleiman).

female(bamidele).
female(amina).
female(rahmat).
female(zainab).
female(yasmin).

spouse(ajose,bamidele).
spouse(suleiman,amina).
spouse(adeshina,zainab).
spouse(salam,rahmat).

married(bamidele,ajose).
married(amina,suleiman).
married(zainab,adeshina).
married(rahmat,salam).

connect(X,Y):-spouse(X,Y).
connect(X,Y):-married(Y,X).

uncle(Y,B):-married(X,Y),married(E,F),siblings(Y,E),siblings(X,F),parent_of(E,B),parent_of(F,B).

parent_of(ajose,adeshina).
parent_of(ajose,rahmat).
parent_of(bamidele,adeshina).
parent_of(bamidele,rahmat).
parent_of(suleiman,salam).
parent_of(suleiman,zainab).
parent_of(amina,salam).
parent_of(amina,zainab).

parent_of(salam,farouk).
parent_of(rahmat,farouk).

parent_of(adeshina,mubarak).
parent_of(adeshina,yasmin).
parent_of(zainab,mubarak).
parent_of(zainab,yasmin).

mother(X,Y):-parent_of(X,Y),female(X).

siblings(A,B):-parent_of(X,A),parent_of(X,B),\=(A,B).


grandparent(ajose,X).
grandparent(X,mubarak).


ancestor_of(X,Y):-parent_of(X,Y).
ancestor_of(X,Y):-parent_of(X,Z),ancestor_of(Z,Y).