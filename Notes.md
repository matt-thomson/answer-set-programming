# Say WHAT you want, NOT HOW you want it #

An Introduction to Declarative Programming in Answer Sets

## Declarative Programming ##

Traditional languages:

* programmer needs to provide algorithm
* needs verification

Declarative languages:

* programmer provides requirements for problem and solution
* program == specification

Advantages:

* simple & quick to write
* helps to understand problem
* portable

Disadvantages:

* slow
* hard to learn

Key concept: **time to solution**

Fundamental concept: **models, not proofs, represent solutions**

Need techniques to compute models (not proofs) => ASP solvers

Good for solving search problems:

* N queens problem
* Error diagnoses for a faulty system
* Route planning
* Optimal code sequencess
* Composing music (!)

## Answer set programming ##

* Programs are written in AnsProlog
* Programs consist of rules (not statements)
* Rules are of the form "conclusion :- condition"
* If the condition is true, then the conclusion must be true
* Using clingo as an answer set solver
* `clingo nameFile` for one solution
* `clingo -n 0 nameFile` for all solutions

## Simple example - menu ##

* Facts (no conclusion)
* Rules (conclusion & condition)
* Negation as failure (if condition is false then not a solution)

## Simple example - family tree ##

* Can express facts with different predicates and variables as (e.g.) `mother(M, X)`.

## Exercise - Tweety ##

Create a program for birds (in general) that can derive that birds can fly, but that makes an exception for penguins, since penguins are non-flying birds.  Demonstrate your example with tweety the penguin and polly the parrot.

Extension: ostriches and birds with broken wings cannot fly.

## Theory ##

Can define deduction rules to find the answer set.

## Example - Seating Allocations ##

Uses choice rules to restrict the number of people on a table.

## Exercise - Graph Colouring ##

Given a set of nodes and edges between these nodes, and a given set of colours, determine if you can colour the graph with the available colours such that connected nodes do not share the same colour.

e.g. given a set of countries and their neighbours, colour the map such that neighbouring countries have distinct colours.