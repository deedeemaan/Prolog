interclasare([],[],[]):-!.
interclasare([],L2,L2):-!.
interclasare(L1,[],L1):-!.
interclasare([H1|T1],[H2|T2],[H1|R]):-
    H1 < H2,
    !,
    interclasare(T1,[H2|T2],R).
interclasare([H1|T1],[H2|T2],[H2|R]):-
    H1 > H2,
    !,
    interclasare([H1|T1],T2,R).
interclasare([H1|T1],[_|T2],[H1|R]):-
    interclasare(T1,T2,R).
