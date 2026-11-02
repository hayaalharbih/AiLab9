sumlist([], 0).

sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.

calculate_total_average :-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    write('Enter third number: '),
    read(Z),
    Total is X + Y + Z,
    Average is Total / 3,
    write('Total: '), write(Total), nl,
    write('Average: '), write(Average), nl.
