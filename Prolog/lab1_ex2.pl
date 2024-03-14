substituie(_, _, [], []).
substituie(E, NouE, [E|T], [NouE|R]) :-
    substituie(E, NouE, T, R).
substituie(E, NouE, [H|T], [H|R]) :-
    H \= E,
    substituie(E, NouE, T, R).
