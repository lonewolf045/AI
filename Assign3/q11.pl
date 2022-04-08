quick_sort(InList, OutList) :-
    quick_sort(InList, [], OutList).

quick_sort([], A, A).
quick_sort([H|T], A, OutList) :-
    partition(T, Lt, H, Gt),
    quick_sort(Gt, A, GtSorted),
    quick_sort(Lt, [H|GtSorted], OutList).

partition([], [], _, []).
partition([A|T], [A|Lt], X, Gt) :-
    A=<X,
    partition(T, Lt, X, Gt).
partition([A|T], Lt, X, [A|Gt]) :-
    A>X,
    partition(T, Lt, X, Gt).
