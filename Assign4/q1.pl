factorial(0, F, F) :- !.
factorial(N, Acc, F) :-
    N>0,
    Acc1 is Acc*N,
    Nn is N-1,
    factorial(Nn, Acc1, F), !.

factorial(N, F) :-
    factorial(N, 1, F).
