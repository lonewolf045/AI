cola(0) :-
    write("No bottle of coke on the wall."), !.

cola(1) :-
    write("1 bottle of coke on the wall"),
    nl,
    write("1 bottle of coke"),
    nl,
    write("You take one down and pass it around"),
    nl,
    cola(0), !.

cola(N) :-
    N1 is N-1,
    N1>1,
    write(N),
    write(" bottles of coke on the wall "),
    nl,
    write(N),
    write(" bottles of coke "),
    nl,
    write("You take one down and pass it around "),
    nl,
    write(N1),
    write(" bottles of coke on the wall "),
    nl,
    nl,
    cola(N1), !.
    
cola(N) :-
    write(N),
    write(" bottles of coke on the wall "),
    nl,
    write(N),
    write(" bottles of coke "),
    nl,
    write("You take one down and pass it around "),
    nl,
    N1 is N-1,
    write("1 bottle of coke on the wall "),
    nl,
    nl,
    cola(N1), !.
    