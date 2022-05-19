#include<iostream>
using namespace std;
int x[20];
int G[10][10];
int n,m;
int c = 0;
void print(){
	c++;
	cout << "Cach " << c <<": ";
	for(int i = 1; i<=n; i++){
		cout << "x[" << i << "]= " << x[i] << ", "; 
	}
	cout << endl;
}
bool isSafe(int k, int c){
	for(int i = 1; i <= n; i++) {
		if(G[k][i] == 1 && c == x[i])
			return false;
	}
	return true;
}
void graphColour(int k) {
	for(int c = 1; c <= m; c++) {
		if(isSafe(k,c)) {
			x[k] = c;
			if(k >= n)
				print();
			else
				graphColour(k+1);
			x[k]=0;	
		}	
	}
}
int main(){
	cout << "So dinh N = "; cin >> n;
	cout << "So mau M = "; cin >> m;
	for(int i = 1; i<=n; i++ ){
		for(int j = 1; j<=n; j++){
			cin >> G[i][j];	
		}
	}
	graphColour(1);
}
