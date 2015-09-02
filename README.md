# Programming In Prolog (My sandbox)
#### Lecture notes

These lecture notes are based on the awsome 4 part video about Prolog from The Simple Engineer - [Prolog Programming](https://www.youtube.com/playlist?list=PLVmRRBrc2pRCWtYk752jCIfhD8GmoYfc_)



* [Part 1 - Facts, Rules and Queries](part1.md)
* [Part 2 - Syntax, Questions and Structs](part2.md)
* [Part 3 - Scope, Structures and Arithmetic Operations](part3.md)
* [Part 4 - Lists, Pairs and the Member Function](part4.md)

## Other articles from internet
*I copied them here because of Markdown`s beautiful formatting. Credits goes to the authors*

* [Recursion](recursion.md)

## Logic Problems & their solutions in Prolog

### The Criminal

```
A says: "It's not me"
B says: "It's D"
C says: "It's B"
D says: "It's not me

There is only one criminal and the rest are telling the truth.
Find who the criminal is. 
```

#### Solution
* [Solution](logic_problems/criminals.pl)

### The Graph coloring problem


Given a map divided into regions, can you color the map using a defined amount of colors such that no two adjacent regions have the same color? In the image below, we start with the left map, uncolored, and try to find a map coloring using only four different colors. The right map is one of the possible solutions. You can read more about how the solution is written here: 
[Source](https://bernardopires.com/2013/10/try-logic-programming-a-gentle-introduction-to-prolog/)
![Image](https://bernardopires.com/wp-content/uploads/2013/09/map_coloring_germany.png)

#### Solution
* [Solution](logic_problems/coloring.pl)

#### Query
```
germany(SH, MV, HH, HB, NI, ST, BE, BB, SN, NW, HE, TH, RP, SL, BW, BY).
```




## Resourses: 
* [Amazing set of prolog problems with solutions](http://www.ic.unicamp.br/~meidanis/courses/mc336/2009s2/prolog/problemas/)
