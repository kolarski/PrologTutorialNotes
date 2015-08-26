/*weather(City,Season,Temp).*/

weather(phoenix,hot, summer).
weather(la,warm,summer).
warmer_than(C1, C2) :-
  weather(C1, hot, summer),
  weather(C2, warm, summer),
  write(C1), write(' is warmer then '), write(C2), nl.