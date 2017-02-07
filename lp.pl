sum-up([],0).
sum-up([H|T], N):-
      nl, write('H:'), write(H),
      nl, write('N:'), write(N), nl,
      sum-up(T, K),
      N is K+1.
