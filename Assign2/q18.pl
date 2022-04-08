transpose([], [], []).
transpose([A|T], [], [[A]|Ts]) :-
    transpose(T, [], Ts).
transpose([], [B|T], [[B]|Ts]) :-
    transpose([], T, Ts).
transpose([A|T1], [B|T2], [[A, B]|Ts]) :-
    transpose(T1, T2, Ts).