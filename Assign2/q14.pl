symmetric_difference(A, B, Ans) :-
    difference(A, B, P1),
    difference(B, A, P2),
    union(P1, P2, Ans).