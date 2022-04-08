quick_sort([], []).
quick_sort([A], [A]).
quick_sort([F|Rest], S) :-
    partition(Rest, Lt, F, Gt),
    quick_sort(Lt, Slt),
    quick_sort(Gt, Sgt),
    append(Slt, [F|Sgt], S).
