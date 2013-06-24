colour(red).
colour(blue).
colour(green).

node(1).
node(2).
node(3).
node(4).

edge(1, 2).
edge(1, 4).
edge(2, 3).
edge(3, 4).

% allocate one colour to each node
1{colouring(Node, Colour): colour(Colour)}1 :- node(Node).

% filter out all colourings where two nodes connected by an edge have the same colour
:- edge(Node1, Node2), colouring(Node1, Colour), colouring(Node2, Colour).

#hide.
#show colouring(Node, Colour).