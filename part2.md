# Part 2 - Syntax, Questions and Structs

## Video
[![Programming In Prolog Part 2 - Syntax, Questions and Structs](http://img.youtube.com/vi/tDeR7_DzCDQ/0.jpg)](http://www.youtube.com/watch?v=tDeR7_DzCDQ "Programming In Prolog Part 2 - Syntax, Questions and Structs")

## Variables
Setup:
```
weather(phoenix, summer, hot).
weather(la, summer, warm).
weather(phoenix, winter, warm).
```

Some variables
```
weather(City,summer,hot).
weather(City,_,warm).
```

## Compound questions

All the cities that are hot in the summer and warm in winder

```
weather(City, summer, hot), weather(City, winter, warm)
```

## Rules (in-depth)
```
Relationship(object, ... objects) :- Relationship(objects ...)
		|						   |     |
This is the HEAD                  IF    BODY
```



## Structs

```
course(cse110, mon, wed, 11, 12, 11, 12, holton, bryce, coor105, coor321).
```

```
course (
	cse110,
	day(mon, wed),
	time(11, 12),
	prof(holton, bryce),
	coor105
		).

cource (
	cse110,
	day(mon, wed),
	time(11, 12),
	prof(holton, bryce),
	coor321
	).
```

## Workfiles

* [workfiles/part2-1.pl](workfiles/part2-1.pl)
* [workfiles/part2-2.pl](workfiles/part2-2.pl)
* [workfiles/part2-3.pl](workfiles/part2-3.pl)
