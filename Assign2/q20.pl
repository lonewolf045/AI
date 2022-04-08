slice([X|_], 1, 1, [X]).
slice([X|To], 1, K, [X|Tm]) :-
    K>1,
    Kk is K-1,
    slice(To, 1, Kk, Tm).
slice([_|To], S, E, L) :-
    S>1,
    Sn is S-1,
    En is E-1,
    slice(To, Sn, En, L).
