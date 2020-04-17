#include<iostream>
using namespace std;

int main{
int q, n, p[n], bt[10], st[10], tt[10], wt[10], rt[10];

cout << "Enter the number of processes: "<< endl;
cin >> n;

cout << "Enter name of Processes : ";
for (int i = 0; i < n; i++)
	{
		cin >> p[i];
	}

cout << "\nEnter Process Burst Time";
for (int i = 0; i < n; i++)
	{
		cout << "\nBurst time of process " << i << " is : ";
		cin >> bt[i];
		bt1[i] = bt[i];
		rt[i] = bt[i];
	}


cout << "Enter the time quantum: " << endl;
cin >> q;

int time = 0
for (int i = 0; i < n; i++){
if(rt[i]>q)
 {
   rt[i]=rt[i]-q;
   cout<<" | P["<<i+1<<"] | ";
   time+=q;
   cout<<time;
   }
 else if(rt[i]<=quantum && rt[i]>0)
 {time+=rt[i];
  rt[i]=rt[i]-rt[i];
  cout<<" | P["<<i+1<<"] | ";
  cout<<time;
 }
}
 }

