invers([],Colectoare,Colectoare):-!.
invers([H|T],Colectoare,Rez):-
    invers(T,[H|Colectoare],Rez).

inversMain(L,Rez):-
    invers(L,[],Rez).

addFunc([],[],0,[]):-!.
addFunc([],[],Tr,[Tr]):-!.
addFunc([H|T],[],Tr,Suma):-!,
    S is H + Tr,
    S1 is S div 10,
    S2 is S mod 10,
    addFunc(T,[],S1,Suma1),
    Suma = [S2|Suma1].
addFunc([],[H|T],Tr,Suma):-!,
    S is H + Tr,
    S1 is S div 10,
    S2 is S mod 10,
    addFunc([],T,S1,Suma1),
    Suma = [S2|Suma1].
addFunc([HA|TA],[HB|TB],Tr,Suma):-!,
    S is HA + HB + Tr,
    S1 is S div 10,
    S2 is S mod 10,
    addFunc(TA,TB,S1,Suma1),
    Suma = [S2|Suma1].

addFuncMain(A,B,S):-
    inversMain(A,CopA),
    inversMain(B,CopB),
    addFunc(CopA,CopB,0,Suma),
    inversMain(Suma,S).
