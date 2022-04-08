and(A, B) :-
    A,
    B.
or(A, _) :-
    A.
or(_, B) :-
    B.

nand(A, B) :-
    not(and(A, B)).

nor(A, B) :-
    not(or(A, B)).

A xor B :-
    or(and(not(A), B), and(A, not(B))).

equ(A, B) :-
    or(and(A, B), and(not(A), not(B))).

impl(A, B) :-
    or(not(A), B).

bool(true).
bool(fail).
table(A, B, Expression) :-
    bool(A),
    bool(B),
    evaluate(A, B, Expression),
    fail.

evaluate(A, B, Expression) :-
    Expression, !,
    write(A),
    write(' '),
    write(B),
    write(' '),
    write(true),
    nl.

evaluate(A, B, _) :-
    write(A),
    write(' '),
    write(B),
    write(' '),
    write(fail),
    nl.