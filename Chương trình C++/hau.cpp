#include <iostream>
using namespace std;

int a[20], n, c = 0;
//a[i] co gia tri là j, nghia la chung ta dat quan hau tai dong i cot j

void Print() 
{
	c++;
	cout << "Phuong an thu " << c << ":" << endl;
	
	for (int i = 1; i <= n; i++)
	{
		cout << "queen(" << i << "," << a[i] << "); ";
		for (int j = 1; j <= n; j++)
			if (j == a[i])
				cout << " x";
			else
				cout << " .";
		cout<<endl;
	}
}

//Dat quan hau vao o (h, c) chung ta phai kiem tra
//a[h]=c; 
	

bool Check(int h, int c)
{
	
	for (int i = 1; i < h; i++){		
		if (c == a[i]) // kiem tra cot //a[1], a[2], ..., a[h-1] khac c
			return false;
		if (c-h == a[i]-i) 	// kiem tra duong cheo chinh c-h khac a[i], i
			return false;
		if (c+h == a[i]+i) // kiem tra duong cheo phu c+h khac a[i]+i
			return false;
	}
	return true;
}

// dat quan hau o dong thu k
void Attemp(int k)
{
	for (int i = 1; i <= n; i++)
		if (Check(k, i))
		{
			a[k] = i;
			if (k == n)
				Print();
			else
				Attemp(k+1);
		}
}

int main() 
{
	cout<<"Nhap n = ";
	cin>>n;
	Attemp(1);
}
