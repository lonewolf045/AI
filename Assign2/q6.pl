duplicate([X], [X, X]).
duplicate([A|B], [A, A|Ts]) :-
    duplicate(B, Ts).