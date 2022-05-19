% N queens puzzle
% input : positive integer n.
1 { queen (R ,1.. n)} 1 :- R =1.. n.
% achieved : set queen /2 contains one square in each
% row of the n-by -n chessboard .
:- queen(R1,C), queen(R2,C), R1!=R2.

% achieved : this set contains at most one square in
% each column .
:- queen(R1,C1), queen(R2,C2), R1!=R2, |R1-R2|=|C1-C2|.
% achieved : this set contains at most one square in
% each diagonal .
