in_order([]).
in_order([_]).
in_order([X, Y|T]) :-
    X=<Y,
    in_order([Y|T]).
permutation_sort([], []).
permutation_sort(L, S) :-
    rnd_permu(L, S),
    in_order(S).
