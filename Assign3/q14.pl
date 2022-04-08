pack(InList, OutList) :-
    pack(InList, [], OutList).

pack([], Acc, [Acc]).
pack([A], Acc, Z) :-
    pack([], [A|Acc], Z).
pack([X, Y|T], Acc, [[X|Acc]|Z]) :-
    X\=Y,
    pack([Y|T], [], Z), !.
pack([X|T], Acc, Z) :-
    pack(T, [X|Acc], Z).
