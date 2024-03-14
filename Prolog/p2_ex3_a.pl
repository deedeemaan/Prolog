divizori(N,D,[]):-
    D > N,
    !.

divizori(N,D,[D|L]):-
    D =< N,
    N mod D =:= 0,
    !,
    NewD is D+1,
    divizori(N,NewD,L).

divizori(N,D,L):-
    NewD is D+1,
    divizori(N,NewD,L).

lista_div([],[]):-!.
lista_div([H|T],[H,L1|R]):-
          divizori(H,1,L1),
          lista_div(T,R).
