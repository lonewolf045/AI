trimlast(0, L, L).
trimlast(N, L, L1) :-
    N>0,
    Nk is N-1,
    cutlast(L, Ls),
    trimlast(Nk, Ls, L1).