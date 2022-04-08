member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).

subset([], _).
subset([H|T], L) :-
    member(H, L),
    subset(T, L).
