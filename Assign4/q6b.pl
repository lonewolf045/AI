next_higher_permutation(L, Ln) :-
    reverse(L, R),
    findPeak(R, Lo),
    findHigher(R, Lo, Hi),
    append(L1, L2, L),
    append(Lim, [Lo], L1),
    append(L21, L22, L2),
    append([Hi], L221, L22),
    append([Lo], L221, Lc),
    append(L21, Lc, R2),
    reverse(R2, Rim),
    append(Lim, [Hi], R1),
    append(R1, Rim, Ln), !.

findHigher([H|_], N, H) :-
    H>N, !.

findHigher([_|T], N, H) :-
    findHigher(T, N, H).

findPeak([X, Y|_], Y) :-
    X>Y, !.

findPeak([X, Y|L], P) :-
    X=<Y,
    findPeak([Y|L], P).
