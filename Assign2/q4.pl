replace_first(_,_,[],[]).
replace_first(X,Y,[X|T],[Y|T]) :- !.
replace_first(X,Y,[A|T],[A|Ts]):-
    replace_first(X,Y,T,Ts).