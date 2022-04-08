member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).
union(L, [], L).
union(L1, [X|L2], L3) :-
    member(X, L1), !,
    union(L1, L2, L3).
union(L1, [X|L2], [X|L3]) :-
    union(L1, L2, L3).