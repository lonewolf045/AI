sublist([], _).
sublist([X|T1], [X|T2]) :-
    prefix(T1, T2), !.
sublist(L, [_|T]) :-
    sublist(L, T).
prefix([], _).
prefix([X|T1], [X|T2]) :-
    prefix(T1, T2).

