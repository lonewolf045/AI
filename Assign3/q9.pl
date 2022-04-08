insert(X, [], [X]).
insert(X, [H|T], [X, H|T]) :-
    X=<H, !.
insert(X, [H|T], [H|Z]) :-
    insert(X, T, Z).

insertion_sort([], []).
insertion_sort([A], [A]).
insertion_sort([H|InList], OutList) :-
    insertion_sort(InList, Interim),
    insert(H, Interim, OutList).