concatenate([], B, B).
concatenate([X|A], B, [X|C]) :-
    concatenate(A, B, C).
swap([X], [X]).
swap([], []).
swap(L1, L2) :-
    concatenate([F|M], [L], L1),
    concatenate([L|M], [F], L2).