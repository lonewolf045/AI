delete_all(_,[],[]).
delete_all(X,[X|T],Ts) :- 
    delete_all(X,T,Ts),
    !.
delete_all(X,[Y|T],[Y|Ts]):-
    delete_all(X,T,Ts).