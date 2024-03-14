putere(N):-
    N > 0,
    Y is log(N) / log(2),
    Y =:= round(Y).


adauga_dupa_putere([],_,_,[]):-!.
adauga_dupa_putere([H|T],E,Poz,[H,E|Rez]):-
    putere(Poz),
    NewPoz is Poz+1,
    !,
    adauga_dupa_putere(T,E,NewPoz,Rez).

adauga_dupa_putere([H|T],E,Poz,[H|Rez]):-
   NewPoz is Poz+1,
   !,
   adauga_dupa_putere(T,E,NewPoz,Rez).
