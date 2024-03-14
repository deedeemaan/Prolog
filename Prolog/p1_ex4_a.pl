inlocuire_element([], _, _, []).
inlocuire_element([E|T], E, NouaL, [NouaL|LModif]) :-
    !,
    inlocuire_element(T, E, NouaL, LModif).
inlocuire_element([H|T], E, NouaL, [H|LModif]) :-
    !,
    inlocuire_element(T, E, NouaL, LModif).
