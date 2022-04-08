delete_first(_,[],[]).
delete_first(X,[X|T],T) :- !.
delete_first(X,[Y|T],[Y|Ts]):-
    delete_first(X,T,Ts).
