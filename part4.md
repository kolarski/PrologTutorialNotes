# Part 4 - Lists, Pairs and the Member Function

## Video
[![Programming in Prolog Part 4 - Lists, Pairs and the Member Function](http://img.youtube.com/vi/-jdb7iF85LM/0.jpg)](http://www.youtube.com/watch?v=-jdb7iF85LM "Programming in Prolog Part 4 - Lists, Pairs and the Member Function")


*Sorry for the poor quality notes of part 4, but I didn't had the time to fully review this part. I hope that the code examples will be good start to experiment*

## Pairs & Lists

Examples of lists
```
[rob, john, lisa, conner].
[josh, jake, eat(cheese)].
```

#### Stucture
`[Head|Tail]`

Example: 
```
[Head|Tail] = [josh, jake, eat(cheese)].
```

Only non empty list can have `Head` and `Tail`

If you run:
```
[Head|Tail] = [].
```
You will get **false**

#### Print the first two items of the list and then the remainder
Example

```
[X,Y|W] = [[], ryan, john, eat(cheese)].
```

#### Nasted lists and pairs

```
[_, _, [_ | X]|_] = [[], dead(z), [2, [b,c]], [], z, [2,[b,c]]]

```

Will get only:
```
[[b,c]]
```

#### Member function

Build-in library called `member`, and you ask does this member exists in some list or some pair. 

Does the `X` exists in the `H` or `T` of the list.

```
member(X, [H|T]).
```
member is a function defined in a recursive manner.


This returns true when: X is the Head of the List
if not we are going to call some list and 

```
member(X, [X|T]).
member(X, [H|T]) :-
	member(X,T).
```

This is an example of reccursion

If you have list of 

`[1, 2, 3, 4]`

Is 3 a member of the list.
Ok 3 is not the member of the Head `H`
Then will pass [2, 3, 4] as the list
Then will pass [3, 4] as the list
The 3 will is equal the Head `H` and will satisfy the stopping condition 
`member(X, [X|T]).`

 and it will stop and return true.


Examples: 
```
member(jan, [jan, josh, judy]).
member(troy, [josh, jan, troy]).
```

Both return **true**

```
member(troy, [josh, jan, judy]);
```
will return **false**


### Satisfy Constrains

```
member(X, [23,25,67,12,25,19,9,6]),
Y is X*X, Y<400
```

### Example - Change Machine
We are going to build a change machine.

* It is goign to return a change for 1 dollar.
* It is going to consist of change 

	* half dolars (50 cents)
	* quotors (25 cents)
	* dimes (10 cents)
	* nikels (5 cents)
	* pennys (1 cent)

```
change(H, Q, D, N, P) :-
	member(H, [0 ,1, 2]),
	member(Q, [0, 1, 2, 3, 4]),
	member(D, [0, 1 ,2, 3, 4, 5, 6, 7, 8, 9, 10]),
	member(N, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]),
    
	S is 50*H + 25*Q + 10*D + 5*N,
	S =< 100,
	P is 100-S.

```

## Queries:

```
change(H, 0, 0, 0, 0).
change(0, 0, 0, 0, P).
change(0, 3, 0, 0, P).
```


## Workfiles

*no work files*
