:- ensure_loaded(q2).
table(List, Expression) :-
    boolList(List),
    evaluate(List, Expression),
    fail.

boolList([]).
boolList([H|T]) :-
    bool(H),
    boolList(T).

evaluate(List, Expression) :-
    writeList(List),
    writeExpression(Expression),
    nl.

writeList([]).
writeList([H|T]) :-
    write(H),
    write(' '),
    writeList(T).

writeExpression(Expression) :-
    Expression, !,
    write(true).
writeExpression(_) :-
    write(fail).
