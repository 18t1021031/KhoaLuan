vertex(1;2;3;4;5).
edge(1,2;2,3;2,4;3,4;4,5).
col(1; 2; 3). 
edge(Y,X) :- edge(X,Y).
color(X,1)  :- vertex(X), not  color(X,2), not color(X,3).
color(X,2) :- vertex(X), not color(X,1), not color(X,3).
color(X,3)   :- vertex(X), not color(X,1), not color(X,2).
:- edge(X, Y), col(C), color(X, C), color(Y, C).
#show color/2.