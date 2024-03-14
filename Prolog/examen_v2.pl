subs_lista_aux([],[]):-!.
subs_lista_aux([H|T],[H|R]):-
    subs_lista_aux(T,R).

substituie_lista1([],_,_,[]):-!.
substituie_lista1([H|T],E,LIns,[LIns|R]):-
    H =:= E,
    subs_lista_aux(LIns,Rez),
    !,
    substituie_lista1(T,E,LIns,R).

substituie_lista1([H|T],E,L,[H|R]):-
    substituie_lista1(T,E,L,R).
