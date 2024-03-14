sublista1(N, M, ListaInitiala, Sublista) :-
    N > 0,
    M >= N,
    sublista_aux(N, M, ListaInitiala, Sublista),
    !.

sublista_aux(_, 0, _, []).
sublista_aux(1, M, [X|T], [X|Sublista]) :-
    M1 is M - 1,
    M > 0,
    sublista_aux(1, M1, T, Sublista).
sublista_aux(N, M, [_|T], Sublista) :-
    N > 1,
    N1 is N - 1,
    sublista_aux(N1, M - 1, T, Sublista).
sublista_aux(_, _, [], []).

