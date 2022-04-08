combination(0, _, []).
combination(N, L, [X|T]) :-
    N>0,
    choose(X, L, R),
    Nk is N-1,
    combination(Nk, R, T).

choose(X, [X|R], R).
choose(X, [_|R], L) :-
    choose(X, R, L).