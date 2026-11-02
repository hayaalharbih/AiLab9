and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

logicGate(A, B, Output) :-
    and(A, B, R1),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, R2),
    or(R1, R2, Output).
