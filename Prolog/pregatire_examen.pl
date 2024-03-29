candidat([H|_],H).
candidat([_|T],R):-
    candidat(T,R).

%candidat de n ori = combinatii luate cate n
comb([H|_],1,[H]).
comb([H|T],K,[H|R]):-
    K > 1,
    K2 is K - 1,
    comb(T,K2,R).
comb([_|T],K,R):-
    comb(T,K,R).

sumalista([],0).
sumalista([H|T],R):-
    sumalista(T,R2),
    R is H + R2.

aran(L,N,R):-
    comb(L,N,R2),
    sumalista(R2,S),
    aranaux(L,R,S,R2).

aranaux(_,R,S,R):-
    S mod 3 =:= 0.
aranaux(L,O,S,[H|R]):-
    candidat(L,E),
    not(candidat([H|R],E)),
    E < H,
    S2 is S + E,
    aranaux(L,O,S2,[E,H|R]).

main(L,N,R):-
    findall(Q,aran(L,N,Q),R).
