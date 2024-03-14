interschimbare([X,Y|T], [Y,X|T]) :- X > Y.
interschimbare([Z|T], [Z|TSortat]) :- interschimbare(T, TSortat).

bubblesort(Lista, LSortata) :-
    interschimbare(Lista, LInter),
    !,
    bubblesort(LInter, LSortata).

bubblesort(Lista, Lista).
