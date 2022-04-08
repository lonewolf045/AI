rnd_permu([], []).
rnd_permu(L, L1) :-
    length(L, Len),
    Len>0,
    rnd_select(L, Len, L1).
