resolution(Clauses0, Chain) :-
    maplist(sort, Clauses0, Clauses), % remove duplicates
    length(Chain, _),
    derive_empty_clause(Chain, Clauses).

derive_empty_clause([], Clauses) :-
    member([], Clauses).
derive_empty_clause([C|Cs], Clauses) :-
    resolvent(C, Clauses, Rs),
    derive_empty_clause(Cs, [Rs|Clauses]).

resolvent((As0-Bs0-->Rs), Clauses, Rs) :-
    member(As0, Clauses),
    member(Bs0, Clauses),
    select(Q, As0, As),
    select(not(Q), Bs0, Bs),
    append(As, Bs, Rs0),
    sort(Rs0, Rs), % remove duplicates
    maplist(dif(Rs), Clauses).