cutlast([_], []).
cutlast([H|T], [H|Ts]) :-
    cutlast(T, Ts).