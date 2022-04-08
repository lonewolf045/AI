minimum(A, [A]).
minimum(X, [A|T]) :-
    minimum(X, T),
    X=<A, !.
minimum(A, [A|_]).

delete_first(_, [], []).
delete_first(X, [X|T], T) :- !.
delete_first(X, [Y|T], [Y|Ts]) :-
    delete_first(X, T, Ts).

selection_sort([], []).
selection_sort([S], [S]).
selection_sort(InList, [X|OutList]) :-
    minimum(X, InList),
    delete_first(X, InList, NewList),
    selection_sort(NewList, OutList).

