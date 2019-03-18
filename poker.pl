rank(A) :- member(A, ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']).
rank(A, B) :- rank(A), rank(B).
rank(A, B, C) :- rank(A, B), rank(C).
rank(A, B, C, D) :- rank(A, B, C), rank(D).
rank(A, B, C, D, E) :- rank(A, B, C, D), rank(E).

% four cards
poker(A, A, A, A, B, '4K') :- rank(A, B), A \= B.
% full house
poker(A, A, A, B, B, 'FH') :- rank(A, B), A \= B.
% three cards
poker(A, A, A, B, C, '3K') :- rank(A, B, C), A \= B, B \= C.
% two pairs
poker(A, A, B, B, C, '2P') :- rank(A, B, C), A \= B, A \= C, B \= C.
% one pair
poker(A, A, B, C, D, '1P') :- rank(A, B, C, D), A \= B, A \= C, A \= D, B \= C, B \= D, C \= D.
% others
poker(A, B, C, D, E, '--') :- rank(A, B, C, D, E),
                              not(poker(A, B, C, D, E, '4K')),
                              not(poker(A, B, C, D, E, 'FH')),
                              not(poker(A, B, C, D, E, '3K')),
                              not(poker(A, B, C, D, E, '2P')),
                              not(poker(A, B, C, D, E, '1P')).

% ?- poker(1, 1, 2, 'Q', 3, X).
% X = '1P' ;
% false.

% ?- poker(2, 2, A, B, 'Q', 'FH').
% A = 2,
% B = 'Q' ;
