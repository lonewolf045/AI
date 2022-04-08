swap([L1, L2|R], [L2, L1|R]) :-
    L1>L2.
swap([L|Rs], [L|R]) :-
    swap(Rs, R).
bubble_sort(InList, OutList) :-
    swap(InList, L),
    bubble_sort(L, OutList), !.
bubble_sort(List, List).