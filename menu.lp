% rules
caprese :- tomato, mozzarella, oil.

starter :- caprese.
main :- steak, fries.
dessert :- strawberries, iceCream.

menu1 :- starter, main.
menu2 :- main, dessert.

% negation as failure to model choice
% can only choose menu1 or menu2
choice1 :- menu1, not choice2.
choice2 :- menu2, not choice1.

% alternatively: choice rule - minimum on the left, maximum on the right
%1{choice1, choice2}1.

menu :- choice1.
menu :- choice2.

% constraints

% only allow answers with a menu
:- not menu.

% data (facts)
% like rules but no conclusion - they're always true
tomato.
mozzarella.
oil.
steak.
fries.
strawberries.
iceCream.

% show only the menu chosen
#hide.
#show choice1.
#show choice2.	