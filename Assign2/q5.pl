member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).
has_duplicates([Y|T]) :-
    member(Y, T), !.
has_duplicates([_|T]) :-
    has_duplicates(T).
