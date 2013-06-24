% facts
% father(F, C): F is the father of C
% mother(M, C): F is the mother of C

father(ad, willem).
mother(anje, willem).

father(werner, marina).
mother(danny, marina).

father(richard, werner).
mother(rosa, werner).

father(cornelis_wilhelmus, ad).
mother(corry, ad).

% reasoning
% descendant(D, A): A is the ancestor of descendant D
descendant(D, A) :- father(A, D).
descendant(D, A) :- mother(A, D).
descendant(D, A) :- descendant(D, Z), father(A, Z).
descendant(D, A) :- descendant(D, Z), mother(A, Z).