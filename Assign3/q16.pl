encode_modified(InList, OutList) :-
    encode(InList, Interim),
    modify(Interim, OutList).

modify([[1, A]], [A]) :- !.
modify([L], [L]) :- !.
modify([[1, A]|T], [A|Z]) :-
    modify(T, Z), !.
modify([L|T], [L|Z]) :-
    modify(T, Z).
