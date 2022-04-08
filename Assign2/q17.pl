interleave([], [], []).
interleave([A|B], [], [A|B]).
interleave([], [A|B], [A|B]).
interleave([H1|T1], [H2|T2], [H1, H2|T]) :-
    interleave(T1, T2, T).