encode_direct(InList, OutList) :-
    encode_direct(InList, 0, OutList).

encode_direct([A], Acc, [[Acc1, A]]) :-
    Acc1 is Acc+1.
    %encode_direct([], Acc, [[A, Acc+1]|Z]).
encode_direct([X, Y|T], Acc, [[Acc1, X]|Z]) :-
    X\=Y,
    Acc1 is Acc+1,
    Acc1=\=1,
    encode_direct([Y|T], 0, Z), !.
encode_direct([X, Y|T], _, [X|Z]) :-
    X\=Y,
    encode_direct([Y|T], 0, Z), !.
encode_direct([_|T], Acc, Z) :-
    Acc1 is Acc+1,
    encode_direct(T, Acc1, Z).