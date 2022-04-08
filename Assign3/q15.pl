encode(InList, OutList) :-
    pack(InList, Interim),
    util(Interim, OutList).

getFirst([A|_], A).
util([], []).
util([A|T], [[N1, N2]|Z]) :-
    getFirst(A, N2),
    length(A, N1),
    util(T, Z).
    