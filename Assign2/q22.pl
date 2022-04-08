remove_every_other([], []).
remove_every_other([A], [A]).
remove_every_other([A, _|T], [A|Ts]) :-
    remove_every_other(T, Ts).