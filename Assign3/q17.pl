util(0, _, []).
util(N, A, [A|Z]) :-
    Nk is N-1,
    util(Nk, A, Z).
decode([], []).
decode([[N, A]|T], Ls) :-
    util(N, A, S),
    decode(T, Ts),
    append(S, Ts, Ls), !.
decode([A|T], [A|Ts]) :-
    decode(T, Ts).