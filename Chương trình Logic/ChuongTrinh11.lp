% Find largest independent sets of vertices

% input : set vertex /1 of vertices of a graph G;
% set edge /2 of edges of G

{in(X)} :- vertex (X).
% achieved : in /1 is a set consisting of n vertices of G.

:- in(X), in(Y), edge (X,Y).
% achieved : in /1 has no pairs of adjacent vertices .
min(S) :- S = #sum {1,X : in(X)}.
#minimize {1,X : in(X)}.
% achieved : the number of elements of in /1 is maximal

vertex(a;b;c;d;e;f;g;h).
edge(a,b; b,c; c,d; d,a; e,f; 
	f,g; g,h; h,e; a,e; 
b,f; c,g; d,h; f,h).


#show in /1.
#show max /1.