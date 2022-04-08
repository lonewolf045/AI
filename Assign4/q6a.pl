next_higher_permutation(L, L1) :-
    higher_permutation(L, L1),
    not(far_higher_permutation(L, L1)).

higher_permutation(L, L1) :-
    permutation(L, L1),
    higher(L1, L).

higher([H1|_], [H2|_]) :-
    H1>H2.

higher([H|T1], [H|T2]) :-
    higher(T1, T2).

far_higher_permutation(L, L1) :-
    higher_permutation(L, L2),
    higher(L1, L2).
    