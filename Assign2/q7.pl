multiply(1, A, [A]).
multiply(N, A, [A|T]) :-
    Nk is N-1,
    multiply(Nk, A, T).
concatenate([], B, B).
concatenate([X|A], B, [X|C]) :-
    concatenate(A, B, C).

duplicate([X], N, T) :-
    multiply(N, X, T).
duplicate([A|B], N, L) :-
    multiply(N, A, H),
    duplicate(B, N, Ts),
    concatenate(H, Ts, L).