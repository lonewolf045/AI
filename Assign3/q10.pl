split([], [], []).
split([A], [A], []).
split([A, B|T], [A|L], [B|R]) :-
    split(T, L, R).

merge([], R, R).
merge(L, [], L).
merge([], [], []).
merge([A|L], [B|R], [A|Z]) :-
    A=<B,
    merge(L, [B|R], Z), !.
merge([A|L], [B|R], [B|Z]) :-
    A>B,
    merge([A|L], R, Z).

merge_sort([], []).
merge_sort([A], [A]).
merge_sort(InList, OutList) :-
    split(InList, L, R),
    merge_sort(L, Ls),
    merge_sort(R, Rs),
    merge(Ls, Rs, OutList).