%substituie(L:lista,E:int,LIns:lista,R:lista)
%L: Lista in care inlocuim
%E: Elementul pe care il inlocuim
%LIns: Lista pe care o inlocuim cu elementul
%R: Lista rezultat
%model de flux: (i,i,i,o),(i,i,o,o),(o,i,o,o),(i,i,o,i),
%(i,i,i,i),(o,o,o,o),(o,i,i,o),(o,o,i,o)

substituie_lista([],_,_,[]):-!.
substituie_lista([H|T],E,LIns,[LIns|R]):-
    H =:= E,
    !,
    substituie_lista(T,E,LIns,R).

substituie_lista([H|T],E,L,[H|R]):-
    substituie_lista(T,E,L,R).
