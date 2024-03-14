sublista(_, 0, _, []).
sublista(1, M, [X|T], [X|Sublista]) :-
    M1 is M - 1,
    sublista(1, M1, T, Sublista),
    !.
sublista(N, M, [_|T], Sublista) :-
    N > 1,
    N1 is N - 1,
    sublista(N1, M - 1, T, Sublista),
    !.
sublista(_, _, [], []).
