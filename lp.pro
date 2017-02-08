%SUM UP NUMBERS SIMPLE
sum-up-numbers-simple([], 0).       %if the list is empty, return True

sum-up-numbers-simple([H|T],N):-    %otherwise,
    is_list(H),                     %if new value is a nested list
    sum-up-numbers-simple(T,N).    %ignore it

sum-up-numbers-simple([H|T], N):-   %otherwise
    number(H),                      %if new value is numerical
    sum-up-numbers-simple(T,N1),    %call pred on the current sum rest of the list
    N is N1+H.                      %N = current sum + new value

sum-up-numbers-simple([H|T], N):-   %else
    \+number(H),                    %if new value is non numerical
    sum-up-numbers-simple(T,N).	    %ignore it





%SUM UP NUMBERS GENERAL
sum-up-numbers-general([], 0).      %if the list is empty, return True

sum-up-numbers-general([H|T],N):-   %otherwise,
    is_list(H),                     %if new value is a nested list
    length(H,1),                    %and it has a length of 1
    sum-up-numbers-general(T,N1),
    N is N1+H.

sum-up-numbers-general([H|T],N):-   %otherwise,
sum-up-numbers-general([], 0).      %if the list is empty, return True

sum-up-numbers-general([H|T],N):-   %otherwise,
    is_list(H),                     %if new value is a nested list
    length(H,1),                    %and it has a length of 1
    sum-up-numbers-general(T,N1),
    N is N1+H.

sum-up-numbers-general([H|T],N):-   %otherwise,
    is_list(H),                     %if new value is a nested list
    \+length(H,1),                  %and its length > 1
    append(H,T,Z),                  %flatten list by appending nested list to T
    sum-up-numbers-general(Z,N).    %continue iterating through flattened list

sum-up-numbers-general([H|T], N):-  %otherwise
    number(H),                      %if new value is numerical
    sum-up-numbers-general(T,N1),   %call pred on current sum and rest of list
    N is N1+H.                      %N = current sum + new value

sum-up-numbers-general([H|T], N):-  %else
	\+number(H),                %if new value is non numerical
    sum-up-numbers-general(T,N).    %ignore it





min-above-min([H|T], Min) :-
    min-above-min(T, H, Min).

min-above-min([], N, N).			%if the list is empty, false

min-above-min([H|T], N0, N) :-
    N1 is min(H, N0),
    min-above-min(T, N1, N).







