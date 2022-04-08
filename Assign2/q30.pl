concatenate([], B, B).
concatenate([X|A], B, [X|C]) :-
    concatenate(A, B, C).
same_length([], []).
same_length([_|A], [_|B]) :-
    same_length(A, B).
delete_middle(L, L1) :-
    concatenate(Lf, [_, _|Ls], L),
    same_length(Lf, Ls),
    concatenate(Lf, Ls, L1).