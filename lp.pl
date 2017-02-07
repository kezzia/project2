sum_up_numbers_general([],0).		%if the list is empty, return True
sum_up_numbers_general([H|T],N):-	%otherwise
    number(H),                          %if new value is numerical
    sum_up_numbers_general(T,N1),	%carry on w current sum and rest of list
    N is N1+H.                          %N = current sum + new value
sum_up_numbers_general([H|T],N):-	%else
    \+number(H),                        %if new value is non numerical
    sum_up_numbers_general(T,N).	%ignore it


sum_up_up_numbers_simple([],0).


