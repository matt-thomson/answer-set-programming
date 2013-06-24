person(marina).
person(willem).
person(bob).
person(tina).
person(bert).
person(jane).
person(alyssa).

table(1).
table(2).
table(3).

% allocate each person to exactly one table
1{seating(Person, TableNumber): table(TableNumber)}1 :- person(Person).

% constrain the number of people per table
2{seating(Person, TableNumber): person(Person)}3 :- table(TableNumber).

% filter out all seating arrangements with marina and willem together
:- seating(marina, Table1), seating(willem, Table2), Table1 == Table2.

% alternatively:
% :- seating(marina, TableNumber), seating(willem, TableNumber).

#hide.
#show seating(Person, TableNumber).