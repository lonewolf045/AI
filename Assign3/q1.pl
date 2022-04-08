remove_at(X, [X|T], 1, T) :- !.
remove_at(X, [A|T], N, [A|Ts]) :-
    Nk is N-1,
    remove_at(X, T, Nk, Ts).