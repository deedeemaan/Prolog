is_member(X,[H|_]):-H = X, !.
is_member(X,[_|T]):-is_member(X,T).

multime([],_,[]):-!.
multime([H|T],M,[H|R]):-
    \+ is_member(H,M),
    !,
    M1 = [H|M],
    multime(T,M1,R).

multime([_|T],M,R):-
    multime(T,M,R).

multimeMain(L,R):-multime(L,[],R).
