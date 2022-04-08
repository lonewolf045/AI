replace(1, X, [_|T], [X|T]).
replace(N, X, [H|T], [H|Ts]) :-
    N>1,
    Nk is N-1,
    replace(Nk, X, T, Ts).