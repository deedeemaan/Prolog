munte([], 1).
munte([_], 1).
munte([H1, H2|T], 0) :-
    H1 < H2,
    munte([H2|T], 0).

munte([H1, H2|T], 0) :-
    H1 >= H2,
    munte([H2|T], 1).

munte([H1, H2|T], 1) :-
    H1 > H2,
    munte([H2|T], 1).

% e_munte(L:list)
% e_munte(i)

e_munte([H1, H2, H3|T]) :-
    H1 < H2,
    munte([H1, H2, H3|T] ,0).

% subsets(L:list, R:list)
% subsets(i, o)

subsets([], []).
subsets([H|T], [H|R]) :-
    subsets(T, R).
subsets([_|T], R) :-
    subsets(T, R).

% onesolution(L:list, R:list)
% onesolution(i, o)

onesolution(L, R) :-
    subsets(L, R),
    e_munte(R).

% allsolutions(L:list, S:number, R:list)
% allsolutions(i, o)

allsolutions(L, R) :-
    findall(RPartial, onesolution(L, RPartial), R).














