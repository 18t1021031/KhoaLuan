vertex(1;2;3;4;5;6;7;8).
edge(1,2; 2,3; 3,4; 4,1; 5,6; 
	6,7; 7,8; 8,5; 1,5; 
	2,6; 3,7; 4,8).

edge(Y,X):- edge(X,Y).
1 {started(X):vertex(X)} 1.
1 {path(X,Y) : edge(X,Y), started(X)} 1.
N {path(Y,Z): path(X,Y), edge(Y,Z)} N :- N = #count{X:vertex(X)}.
:-path(X,Y), path(X,Z),Y!=Z.
:-path(X,Z), path(Y,Z),X!=Y.
#show started/1.
#show path/2.