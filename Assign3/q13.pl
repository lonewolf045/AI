compress([], []).
compress([A], [A]).
compress([A, B|T], [A|Z]) :-
    A=\=B,
    compress([B|T], Z), !.
compress([A, A|T], Z) :-
    compress([A|T], Z).