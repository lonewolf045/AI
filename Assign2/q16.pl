remove_all(N, L, L1) :-
    remove_rec(N, N, L, L1).

remove_rec(_, _, [], []).
remove_rec(N, 1, [_|T], Ts) :-
    remove_rec(N, N, T, Ts).
remove_rec(N, K, [X|T], [X|Ts]) :-
    K>1,
    Kk is K-1,
    remove_rec(N, Kk, T, Ts).