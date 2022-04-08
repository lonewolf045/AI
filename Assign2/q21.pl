insert_at(X, L, 1, [X|L]).
insert_at(X, [H|T], K, [H|Ts]) :-
    K>1,
    Kk is K-1,
    insert_at(X, T, Kk, Ts).