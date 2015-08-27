/*A says: "It's not me"
B says: "It's D"
C says: "It's B"
D says: "It's not me"*/

criminal(K):-
    member(K,[a,b,c,d]),
    (K\=a -> A=1;A=0),
    (K=d  -> B=1;B=0),
    (K=b  -> C=1;C=0),
    (K\=d -> D=1;D=0),
    A+B+C+D=:=1.