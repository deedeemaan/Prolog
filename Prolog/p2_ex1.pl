%pozitie(N:integer)
%N: numarul pe care il verificam daca este de forma 2^n-1
%return: true sau false
%model de flux: (i)
pozitie(N):-
    N > 0,
    X is N + 1,
    Y is log(X) / log(2),
    Y =:= round(Y).


%adauga_E(L:lista, E:integre, Poz:integer, Rez:lista)
%L: lista in care adaugam
%E: elemetul pe care il adaugam
%Poz: pozitia pe care aduagam elementul
%Rez: rezultatul, lista cu elemetul adaugat pe poztiile bune
% model de flux:
% (i,i,i,o),(i,i,i,i),(i,o,i,i),(o,o,i,i),(o,i,i,i),(o,i,i,o)
% (o,o,i,o)
adauga_E([],_,_,[]).
adauga_E([H|T],E,Poz,[H,E|Rez]):-
    pozitie(Poz),
    !,
    NewPoz is Poz+1,
    adauga_E(T,E,NewPoz,Rez).

adauga_E([H|T],E,Poz,[H|Rez]):-
    NewPoz is Poz+1,
    adauga_E(T,E,NewPoz,Rez).
