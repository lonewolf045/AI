length([], N, N).
length([_|L], Acc, N) :-
    Acc1 is Acc+1,
    length(L, Acc1, N).

len(L, N) :-
    length(L, 0, N).