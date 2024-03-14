adauga_1([],[]).
adauga_1([H|T],[H,1|R]):-
    H mod 2 =:= 0,
    adauga_1(T,R).
adauga_1([H|T],[H|R]):-
    H mod 2 =:= 1,
    adauga_1(T,R).
