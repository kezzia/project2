sum([], 0).
sum([H|T], N):-
    sum(T, X),
    N is X + H.
