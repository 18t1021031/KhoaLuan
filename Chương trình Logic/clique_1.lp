% Input:
% Do thi G = (V, A), k là so nguyen duong, k <= |V|
% Output:
% Tap ket_qua kích thước k. Thay doi gia tri k ta co cac tap 
% tra loi khac nhau
dinh(a; b; c; d; e; f; g; h).
canh (a, b; b, c; c, d; d, a; 
	 	e, f; f, g; g, h; h, e;
		a, e; b, f; c, g; d, h; f, h).
% Tim tap ket_qua kich thuoc k
% input : Tap dinh va tap canh cua do thi G
% k nguyen duong
#const k = 3.
% Tao ra tap con cua V co k dinh
k {ket_qua(X) : dinh (X)} k.
% Loai bo tap con co 2 dinh khong lien ke
:- ket_qua(X), ket_qua(Y), X!=Y, not canh(X,Y), not canh(Y,X).
#show ket_qua/1.
