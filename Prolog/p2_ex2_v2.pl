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
% (o,o,i,o),(o,o,o,o)
adauga_E([],_,_,[]).
adauga_E([H|T],E,Poz,[H,E|Rez]):-
    pozitie(Poz),
    !,
    NewPoz is Poz+1,
    adauga_E(T,E,NewPoz,Rez).

adauga_E([H|T],E,Poz,[H|Rez]):-
    NewPoz is Poz+1,
    adauga_E(T,E,NewPoz,Rez).


%adauga_prec(L:lista,R:rezultat)
%L: lista in care fac adugari
%R: rezultatul
%model de flux:(i,o),(i,i)
adauga_prec([],[]).
adauga_prec([H], [H]):-!.
adauga_prec([H1,H2|T], Rez):-
    is_list(H2),
    !,
    adauga_E(H2,H1,1,RezAdd),
    adauga_prec(T, R2),
    Rez = [H1,RezAdd|R2].
adauga_prec([H1,H2|T], [H1|Rez]):-
    \+ is_list(H2),
    !,
    adauga_prec([H2|T], Rez).


test:-adauga_prec([1, [2, 3], 7, [4, 1, 4], 3, 6, [7, 5, 1, 3, 9, 8, 2, 7], 5],[1, [2, 1, 3], 7, [4, 7, 1, 4, 7], 3, 6, [7, 6, 5, 1, 6, 3, 9, 8, 2, 6, 7], 5]).


