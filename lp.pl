sum-up([]).
sum-up([X|Y]):- nl, write(X), sum-up(Y).
