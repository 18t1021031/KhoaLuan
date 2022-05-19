% Input : n khach moi, n nguyen duong; 
% Output:
% Sap xep cac cho ngoi cho n khach.
#const n=6.
thich(1,2; 3,4).
khong_thich(2,3; 1,3).
% moi ghe chi cho 1 khach
1 {xep(1..n,C)} 1 :- C = 1.. n.
% khong sap xep mot khach co 2 ghe ngoi
C1=C2 :- xep(G,C1), xep(G,C2 ).
% xep_ghe(X,Y) : cac ghe X va Y la canh nhau
xep_ghe(X,Y) :- X =1..n, Y =1..n, |X-Y|=1.
xep_ghe (1,n;n,1).
% khach thich nhau se ngoi canh nhau
:- thich(G1,G2), xep(G1,C1), xep(G2,C2),
not xep_ghe(C1,C2).
% khach khong thich nhau se khong ngoi canh nhau
:- khong_thich(G1,G2) , xep(G1,C1), xep(G2,C2), 
xep_ghe(C1,C2 ).
#show xep/2.
