split(L, 0, [], L).
split([X|T], N, [X|Ts], L1) :-
    N>0,
    N1 is N-1,
    split(T, N1, Ts, L1).
