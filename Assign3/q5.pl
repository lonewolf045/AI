swap([L1, L2|R], [L2, L1|R]) :-
    length(L1, N1),
    length(L2, N2),
    N1>N2.
swap([L|Rs], [L|R]) :-
    swap(Rs, R).
lsort(InList, OutList) :-
    swap(InList, L),
    lsort(L, OutList), !.
lsort(List, List).

transform([X], [N]) :-
    length(X, N).
transform([H|T], [N|Traf]) :-
    length(H, N),
    transform(T, Traf).
count_delete_all(_, [], [], 0).
count_delete_all(X, [X|T], Ts, N) :-
    count_delete_all(X, T, Ts, Nk),
    N is Nk+1, !.
count_delete_all(X, [Y|T], [Y|Ts], N) :-
    count_delete_all(X, T, Ts, N).
make_dict([], []).
make_dict([X|T], [[X, N]|Traf]) :-
    count_delete_all(X, [X|T], L, N),
    make_dict(L, Traf).

count_dict(L, Dict) :-
    transform(L, Lf),
    make_dict(Lf, Dict).

lfsort(InList, OutList) :-
    count_dict(InList, Dict),
    lfsort(InList, OutList, Dict).

getValue(X, [[X, Val]|_], Val) :- !.
getValue(X, [_|T], Val) :-
    getValue(X, T, Val).
lfswap([L1, L2|R], [L2, L1|R], Dict) :-
    length(L1, N1),
    length(L2, N2),
    getValue(N1, Dict, K1),
    getValue(N2, Dict, K2),
    K1>K2, !.
lfswap([L|Rs], [L|R], Dict) :-
    lfswap(Rs, R, Dict).
lfsort(InList, OutList, Dict) :-
    lfswap(InList, L, Dict),
    lfsort(L, OutList, Dict), !.
lfsort(List, List, _).
