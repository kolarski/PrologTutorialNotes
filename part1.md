# Part 1 -  Facts, Rules and Queries

## Video
[![Programming In Prolog Part 1 - Facts, Rules and Queries](http://img.youtube.com/vi/gJOZZvYijqk/0.jpg)](http://www.youtube.com/watch?v=gJOZZvYijqk "Programming In Prolog Part 1 - Facts, Rules and Queries")

## Facts: 
	1. Jonny is fat
	2. The dog is brown
	3. Suzie likes Bobby

## Convert to predicate logic

**Predicates:**

1. fat
2. brown
3. likes



* `fat(jonny).` <- every expression/fact is ended with a dot
* `brown(dog).`
* `likes(suzie, Bobby).`

### The number of arguments is called Arity

## Rules: 
They extend the facts and their relationship. Infer facts from other facts

```
likes(ryan, brittney).
likes (brittney, ryan).
likes (dan, josh).
```

Do they date ? So we are going to create a rule.

`:-` - *if only if*

```
dating (X, Y) :-
	likes (X,Y),
	likes (Y, X).
```

## Table of operators:

```
and | ,
---------
if  | :-
---------
or  | ;
---------
not | not
```

## Queries

Are dan and sally dating ?

```
likes(dan, sally).
```

Are josh and brittney friends ? 

```
friendship(josh, brittney).
```


## Workfiles

* [workfiles/part1.pl](workfiles/part1.pl)
