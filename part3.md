# Part 3 -  Scope, Structures and Arithmetic Operations

## Video
[![Programming In Prolog Part 3 - Scope, Structures and Arithmetic Operations](http://img.youtube.com/vi/AXuhIFciI0c/0.jpg)](http://www.youtube.com/watch?v=AXuhIFciI0c "Programming In Prolog Part 3 - Scope, Structures and Arithmetic Operations")

## Structs

View [workfile](workfiles/part3-1.pl)

Simple queries: 
```
instructor(X, cse340)
instructor(instructor(john, johnson), cse340).
```

Side note: Looks really strange, but in the last line of the example the 2 instructor mentions mean 2 different things. 

The first instructor is the **Rule**

The second instructor is actually the **struct**

## Scope

Scope of a variable only exists in the fact, rule or query that contains the variable.

```
ate(Person, grilledcheese) : -
	ate(Person, cheese),
	ate(Person, bread).
```

`Person` varible is instantiated 3 diferent times.

Person is different from this example: 
```
ate2(Person, grilledcheese) :-
	ate(Person, cheese1),
	ate(Person, cheese2).
```
This is a new `Person`

[workfiles/part3-2.pl](workfiles/part3-2.pl)

## Operators & Arithmetic Functions

Prolog weaknes is in the ability to manipulate numbers.

### Assign values 

` <variable> is <artithmetic operation>`

Example:

	x is 7+3
	x is 10

### Arithmetic operations

#### Addition
	x is 7+3
#### Subsctration
	x is 5-2
#### Multiplication
	x is 3*2
#### Division
	x is 5/2

#### Integer division
	5//2 = 2

#### Mod
	72 mod 12 = 3

#### Power
	x is 2**3 = 8

#### Example
Convert F to C Rule

```
/*Create a rule to convert F to C*/

avg_temp(phx, 100).
avg_temp(sf, 68).

/* C = (F - 32) * 5/9 */

avg_temp_cels(Location, C_Temp) :-
	avg_temp(Location, F_Temp), 
	C_Temp is (F_Temp - 32) * 5//9.
```
[workfiles/part3-3.pl](workfiles/part3-3.pl)


Queries: 

```
avg_temp_cels(phx, Cels).
avg_temp_cels(sf, Cels).
```


## Swish

[http://swish.swi-prolog.org/](http://swish.swi-prolog.org/)

* Text editor & compiler all in one
* Syntax highlighting
* Query


## Workfiles

* [workfiles/part3-1.pl](workfiles/part3-1.pl)
* [workfiles/part3-2.pl](workfiles/part3-2.pl)
* [workfiles/part3-3.pl](workfiles/part3-3.pl)
