penguin(tweety).
parrot(polly).
sparrow(sid).
broken_wing(sid).
ostrich(olga).

bird(X) :- penguin(X).
bird(X) :- parrot(X).
bird(X) :- sparrow(X).
bird(X) :- ostrich(X).

cannot_fly(X) :- penguin(X).
cannot_fly(X) :- ostrich(X).
cannot_fly(X) :- broken_wing(X).

can_fly(X) :- bird(X), not cannot_fly(X).

#hide.
#show can_fly(X).