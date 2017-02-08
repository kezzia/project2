%SUM UP NUMBERS SIMPLE
sum_up_numbers_simple([], 0).       %if the list is empty, return True

sum_up_numbers_simple([H|T],N):-    %otherwise,
    is_list(H),                     %if new value is a nested list
    sum_up_numbers_simple(T,N).    %ignore it

sum_up_numbers_simple([H|T], N):-   %otherwise
    number(H),                      %if new value is numerical
    sum_up_numbers_simple(T,N1),    %call pred on the current sum rest of the list
    N is N1+H.                      %N = current sum + new value

sum_up_numbers_simple([H|T], N):-   %else
    \+number(H),                    %if new value is non numerical
    sum_up_numbers_simple(T,N).	    %ignore it





%SUM UP NUMBERS GENERAL
sum_up_numbers_general([], 0).      %if the list is empty, return True

sum_up_numbers_general([H|T],N):-   %otherwise,
    is_list(H),                     %if new value is a nested list
    length(H,1),                    %and it has a length of 1
    sum_up_numbers_general(T,N1),
    N is N1+H.

sum_up_numbers_general([H|T],N):-   %otherwise,
sum_up_numbers_general([], 0).      %if the list is empty, return True

sum_up_numbers_general([H|T],N):-   %otherwise,
    is_list(H),                     %if new value is a nested list
    length(H,1),                    %and it has a length of 1
    sum_up_numbers_general(T,N1),
    N is N1+H.

sum_up_numbers_general([H|T],N):-   %otherwise,
    is_list(H),                     %if new value is a nested list
    \+length(H,1),                  %and its length > 1
    append(H,T,Z),                  %flatten list by appending nested list to T
    sum_up_numbers_general(Z,N).    %continue iterating through flattened list

sum_up_numbers_general([H|T], N):-  %otherwise
    number(H),                      %if new value is numerical
    sum_up_numbers_general(T,N1),   %call pred on current sum and rest of list
    N is N1+H.                      %N = current sum + new value

sum_up_numbers_general([H|T], N):-  %else
	\+number(H),                %if new value is non numerical
    sum_up_numbers_general(T,N).    %ignore it





%MIN ABOVE MIN
min_above_min([],[],false).         %if both lists are empty, false

min_above_min([H1|T1],[H2|T2],N):-
    append([H2|T2],[H1|T1],L),
    write(L),nl.









