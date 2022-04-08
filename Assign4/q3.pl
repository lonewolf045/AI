member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).

remove_duplicate([], A, A).
remove_duplicate([H|T], A, L) :-
    member(H, A),
    remove_duplicate(T, A, L), !.
remove_duplicate([H|T], A, L) :-
    remove_duplicate(T, [H|A], L).

remove_duplicate(L, S) :-
    remove_duplicate(L, [], S).

