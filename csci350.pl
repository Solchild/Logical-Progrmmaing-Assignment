% Functional Programming Assignment 
% 1 sum up numbers not in a nested list

% first case
sum-up-numbers-simple([], 0).

% Only numbers
sum-up-numbers-simple([First|Rest], Sum) :-
  number(First),
  sum-up-numbers-simple(Rest, Sum1),
  Sum is First + Sum1.

% non-numbers
sum-up-numbers-simple([First|Rest], Sum1) :-
  \+(number(First)),
  sum-up-numbers-simple(Rest, Sum1).


% 2 sum up numbers in a list (general)

% first case
  sum-up-numbers-general([], 0).

% first is a number
sum-up-numbers-general([First|Rest], Sum) :-
  number(First),
  sum-up-numbers-general(Rest, Sum1),
  Sum is First + Sum1.

% if it's a list
sum-up-numbers-general([FirstElem|Rest],Sum) :-
    isList(FirstElem),
    isList(Rest),
    sum-up-numbers-general(FirstElem, FirstResult).
    
sum-up-numbers-general([First|Rest],Sum) :-
    not(number(First)),
    sum-up-numbers-general(Rest, Sum).
