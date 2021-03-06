parent(pat,jim).
parent(bob,pat).
parent(bob,ann).
parent(tom,bob).
parent(tom,liz).
parent(pam,bob).
parent(liz,sanatt).
male(pat).
male(jim).
male(bob).
male(tom).
male(sanatt).
female(liz).
female(ann).
female(pam).
mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
grandmother(X,Y):- parent(X,Z), parent(Z,Y), female(X).
grandfather(X,Y):- parent(X,Z), parent(Z,Y), male(X).
sibling(X,Y):- parent(A,X), parent(A,Y), not(X=Y).
sister(X,Y):- sibling(X,Y), female(X).
brother(X,Y):- sibling(X,Y), male(X).
cousins(X,Y):- parent(A,X), parent(B,Y), sibling(A,B), not(A=B).
uncle(X,Y):- parent(A,Y), brother(X,A).
aunt(X,Y):- parent(A,Y), sister(X,A).
grandson(X,Y):- parent(A,X), parent(Y,A), male(X).
grandaughter(X,Y):- parent(A,X), parent(Y,A), female(X).
