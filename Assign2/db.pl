not_next(X,Y,[]).
not_next(X,Y,[_]).
not_next(X,Y,[A|[B|T]]):- 
    A =:= X,
    Y =\= B,
    not_next(X,Y,[B|T]).

not_next(X,Y,[A|[B|T]]):- 
    A =\= X,
    Y =:= B,
    not_next(X,Y,[B|T]).

not_next(X,Y,[A|[B|T]]):- 
    A =\= X,
    Y =\= B,
    not_next(X,Y,[B|T]).
concatenate([], B, B).
concatenate([X|A], B, [X|C]) :-
    concatenate(A, B, C).
swap([A,B,X,Y],[Y,X,B,A]).
swap(L,L1):-
    concatenate([A|[B|T]],[X,Y],L),
    concatenate([Y|[X|T]],[B,A],L1).

cutlast([_],[]).
cutlast([X|T],[X|Ts]):-
    cutlast(T,Ts).

delete_first_last(L,L1):-
    concatenate([_|L1],[_],L).

duplicate_every_other([],[]).
duplicate_every_other([A],[A,A]).
duplicate_every_other([A|[B|T]],[A|[A|[B|Ts]]]):-
    duplicate_every_other(T,Ts).


open_flower(L,L1):-
    reverse(L,Lr),
    concatenate(Lrs,[M|Lrf],Lr),
    same_length(Lrf,Lrs),
    concatenate(Lrf,[M|Lrs],L1).
    