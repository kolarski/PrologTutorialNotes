# Recursion
####
Source: [http://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/recursion.html](http://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/recursion.html)


As is commonly the case in many programming tasks, we often wish to repeatedly perform some operation either over a whole data-structure, or until a certain point is reached. The way we typically do this in Prolog is by recursion. This simply means a program calls itself typically until some final point is reached. 

Frequently in Prolog what this means is that we have a first fact that acts as some stopping condition followed up by some rule(s) that performs some operation before reinvoking itself.
Recursion is often found to be a hard concept to grasp. 

For this reason we will present two detailed examples of how it works.

## Recursion 2
```
on_route(rome).

on_route(Place):-
	move(Place,Method,NewPlace),
	on_route(NewPlace).

move(home,taxi,halifax).
move(halifax,train,gatwick).
move(gatwick,plane,rome).
```
`on_route` is a **recursive predicate**. 

This program sees if it is possible to travel to **rome** from a particular place.

The first clause sees if we have already reached **rome**, in which case we stop. The second clause sees if there is a move from the current place, to somewhere new, and then recursive sees if the NewPlace is on_route to rome. The database of moves that we can make is on the right.

Let's now consider what happens when we pose the query ?- on_route(home). This matches clause two of on_route (it can't match clause one because home and rome don't unify). The second on_route clause consists of two subgoals. The first asks whether you can move from home to some new location i.e. move(home,Method,NewPlace). This succeeds with Method = taxi, NewPlace = halifax. This says that yes we can move from home by taking a taxi to halifax. Next we recursively see if we can find a route from halifax to rome by doing the same thing again. This is done by executing the new subgoal on_route(halifax).

## Recursion 3
```
on_route(rome). 

on_route(Place):-
	move(Place,Method,NewPlace),
	on_route(NewPlace).

move(home,taxi,halifax).
move(halifax,train,gatwick).
move(gatwick,plane,rome).
```

The goal `on_route(halifax)` will fail to unify on clause one, so again we'll use the recursive clause two and find some new place to go to. Hence we try the goal `move(halifax,Method,NewPlace)` this succeeds because we can catch a train from halifax to gatwick airport. Hence `Method=train, NewPlace=gatwick`. As a result we then try the recursive call `on_route(gatwick)`, i.e. we see if there is a move from gatwick which will get us to rome.

We now try `on_route(gatwick)`, again this only unifies with the second clause. As a result we try the move clause again this time with Place bound to gatwick. This query will match the third clause of the move database. The results in `Method=plane, NewPlace=rome`. Next we try the recursive goal `on_route(rome)`. This now matches clause one of on_route. This is just a fact and succeeds. As a result all the other on_route goals in turn succeed.

Thus finally our first goal ?- `on_route(home)` succeeds and Prolog responds yes

## Recursion 4

```
parent(john,paul).             /* paul is john's parent */  
     
parent(paul,tom).              /* tom is paul's parent */

parent(tom,mary).              /* mary is tom's parent */       
    
ancestor(X,Y):- parent(X,Y).   /* someone is your ancestor if there are your parent */

ancestor(X,Y):- parent(X,Z), /* or somebody is your ancestor if they are the parent */

ancestor(Z,Y). /* of someone who is your ancestor */
```

The above program finds ancestors, by trying to link up people according to the database of parents at the top to the card. So let's try it out by asking
```
?- ancestor(john,tom).
```

The first clause of ancestor looks to see if there exists a clause that could match the goal `parent(john,tom)`. This fails to match, as a result we try the second clause of ancestor. We now pose the query `parent(john,Z)`. This results in us choosing clause one of parent and binding `Z=paul`. As a result, we now pose the recursive query `ancestor(paul,tom)`. Applying the ancestor rule again, we first try the first clause. This means we check for `parent(paul,tom)`. which successfully matches the second clause of parent. As a result the goal `ancestor(paul,tom)` succeeds. This in turn leads to the goal `ancestor(john,tom)` succeeding and Prolog responding yes

## Exercise 8 - Recursion Exercise

Which of the following programs uses recursion.
```
a(X):-
b(X,Y),
a(X).

go_home(no_12).
go_home(X):-
get_next_house(X,Y),
home(Y).

foo(X):- bar(X).

lonely(X):- no_friends(X).
no_friends(X):- totally_barmy(X).

has_flu(rebecca).
has_flu(john).
has_flu(X):- kisses(X,Y),has_flu(Y).
kisses(janet,john).

search(end).
search(X):- path(X,Y), search(Y).
```

## Recursion Exercise 2

1. Given facts such as
	Bob is taller than Mike.

     Mike is taller than Jim


     Jim is taller than George


Write a recursive program that will determine that Bob's height is greater than George's.
###Recursion Exercises 3
```
town1----->-----town2---->----town3---->----town4--->----town5---->---town6
```
A one way road links 6 towns. Write a program that can work out if you can travel on that road. For example. Here are two sample program behaviours.

```
?- can_get(town2,town5).

yes


?- can_get(town3,town1).


no
```
Source: [http://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/recursion.html](http://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/recursion.html)
