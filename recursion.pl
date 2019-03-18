% 第二引数のリストの最初の要素がXであれば、true
my_member(X, [X|L]).
% 第二引数のリストの最初の要素がXと異なるYである場合は、残りを上の叙述に行く(再帰)
my_member(X, [Y|L]) :- my_member(X, L).

% ?- my_member(2, [1, 2, 3]).
% true .
