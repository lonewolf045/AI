plus(A, 0, A) :- !.
plus(A, s(B), s(C)) :-
    plus(A, B, C).

minus(A, B, C) :-
    plus(B, C, A).

subtract(A, 0, A).
subtract(s(A), s(B), C) :-
    subtract(A, B, C).

multiply(0, _, 0).
multiply(_, 0, 0).
multiply(A, s(0), A).
multiply(s(0), B, B).
multiply(s(A), Y, Product) :-
    multiply(A, Y, SemiProduct),
    plus(SemiProduct, Y, Product).

divide(_, 0, undefined) :- !.
divide(0, _, 0).
divide(X, s(0), X).
divide(X, X, s(0)).
divide(X, Y, 0) :-
    lessThan(X, Y), !.
divide(X, Y, s(Q)) :-
    minus(X, Y, XRem),
    divide(XRem, Y, Q).

lessThan(0, s(_)).
lessThan(s(A), s(B)) :-
    lessThan(A, B).

greaterThan(s(_), 0).
greaterThan(s(A), s(B)) :-
    greaterThan(A, B).
    
lessThanEqualTo(0, 0).
lessThanEqualTo(0, s(_)).
lessThanEqualTo(s(A), s(B)) :-
    lessThanEqualTo(A, B).

greaterThanEqualTo(0, 0).
greaterThanEqualTo(s(_), 0).
greaterThanEqualTo(s(A), s(B)) :-
    greaterThanEqualTo(A, B).

modulo(X, Y, M) :-
    divide(X, Y, Q),
    multiply(Y, Q, P),
    minus(X, P, M).

squareRoot(0, 0).
squareRoot(N, Root) :-
    multiply(Root, Root, N).
