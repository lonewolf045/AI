rnd_select([], _, []) :- !.
rnd_select(_, 0, []) :- !.
rnd_select(L, N, [X|T]) :-
    N>0,
    length(L, Len),
    I is random(Len)+1,
    remove_at(X, L, I, Ln),
    Nk is N-1,
    rnd_select(Ln, Nk, T).
    
    