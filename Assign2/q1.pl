add_at_end([], A, [A]).
add_at_end([F|E], A, [F|L]) :-
    add_at_end(E, A, L).

not_in(_, []).
not_in(X, [Y|T]) :-
    X\=Y,
    not_in(X, T).

append_if_not_present(X, L, Ln) :-
    not_in(X, L),
    add_at_end(L, X, Ln), !.

append_if_not_present(_, L, L).