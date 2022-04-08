solution(L) :-
    template(L),
    util(L).

template([1-_, 2-_, 3-_, 4-_, 5-_, 6-_, 7-_, 8-_]).

util([]).
util([X-Y|T]) :-
    member(Y, [1, 2, 3, 4, 5, 6, 7, 8]),
    util(T),
    check(X-Y, T). 

check(_, []).
check(X-Y, [X1-Y1|T]) :-
    Y=\=Y1,
    X-X1=\=Y-Y1,
    X-X1=\=Y1-Y,
    check(X-Y, T).