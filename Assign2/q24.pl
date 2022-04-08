trim(1, [_|L], L).
trim(N, [_|L], L1) :-
    N>1,
    Nk is N-1,
    trim(Nk, L, L1).
