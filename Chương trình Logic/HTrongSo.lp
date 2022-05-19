vertex(1;2;3;4;5;6;7;8).
edge(1,2,3; 2,3,4; 3,4,5; 4,1,2; 5,6,1; 
	6,7,2; 7,8,5; 8,5,7; 1,5,1; 
	2,6,2; 3,7,4; 4,8,6).

edge(Y,X,Z):- edge(X,Y,Z).
1 {started(X):vertex(X)} 1.
1 {path(X,Y,Z) : edge(X,Y,Z), started(X)} 1.
N {path(Y,Z,T): path(X,Y,_), edge(Y,Z,T)} N :- N = #count{X:vertex(X)}.
:-path(X,Y,_), path(X,Z,_),Y!=Z.
:-path(X,Z,_), path(Y,Z,_),X!=Y.
sum(S) :- S = #sum{Z,X,Y: path(X,Y,Z)}.

#minimize{Z,X,Y: path(X,Y,Z)}.
#show started/1.
#show path/3.
#show sum/1.