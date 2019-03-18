% Human is error (人間は間違いを犯すものである。)
human(alice).
human(bob).
error(X) :- human(X).
% ~~~~~~~~~~~~~~~~~~ 節
% 頭部 :- 本体部

% ?- error(alice).
% true.

% bananaは人間でない。したがって、間違いを犯さない。
% ?- error(banana).
% false.
