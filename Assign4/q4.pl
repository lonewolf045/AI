remove_duplicate([], []).
remove_duplicate([A], [A]).
remove_duplicate([X|R], L) :-
    remove_duplicate(R, L),
    member(X, L), !.
remove_duplicate([X|R], [X|T]) :-
    remove_duplicate(R, T).