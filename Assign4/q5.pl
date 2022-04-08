reverse([], A, A).
reverse([X|Rest], Acc, L) :-
    reverse(Rest, [X|Acc], L).
reverse(L, R) :-
    reverse(L, [], R).
