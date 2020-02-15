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
