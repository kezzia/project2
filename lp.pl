sum([],0).
sum([H|T], N):-
      nl, write('H:'), write(H),
      nl, write('N:'), write(N), nl,
      sum(T, H+N).
