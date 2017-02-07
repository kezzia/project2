sum_up_numbers_general([], 0). %if the list is empty, return True
sum_up_numbers_general([H|T], N):- %otherwise
    sum_up_numbers_general(T,N1), %call sum_up_numbers_general on the current sum and the rest of the list
    N is N1+H. %N = current sum + new value
