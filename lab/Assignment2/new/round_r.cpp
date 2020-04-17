#include<iostream>
using namespace std;
 
int main()
{  
int p[10],wt[10],ct[10],bt[10],rt[10],tt[10],n,q,total, avgwt, avgtat;
cout<<"Enter nber of processes: ";
 cin >> n;

  cout << "Enter name of Processes : ";
  for (int i = 0; i < n; i++)
    {
      cin >> p[i];
    }
cout<<"Enter burst time";
for(int i=0;i<n;i++)
{  cout<<"\nP["<<i+1<<"]: "; cin>>bt[i];
   rt[i] = bt[i];
   wt[i]=0;
}
cout<<"\n\nEnter q: "; 
cin>>q;
int rp = n;
int i=0;
int time=0;
cout<<"0";
wt[0]=0;
while(rp!=0) {
 if(rt[i]>q)
 {
   rt[i]=rt[i]-q;
   cout<<" | P["<<i+1<<"] | ";
   time+=q;
   cout<<time;
   }
 else if(rt[i]<=q && rt[i]>0)
 {time+=rt[i];
  rt[i]=rt[i]-rt[i];
  cout<<" | P["<<i+1<<"] | ";
  rp--;
  cout<<time;
 }
 
i++;
if(i==n)
{
i=0;
}
 
}

for (int i = 1; i < n; i++)
    {
      ct[i] = time;
    }

for (int i = 1; i < n; i++)
    {
	wt[i] = ct[i] - bt[i];
    }

for (int i = 1; i < n; i++)
    {
	tt[i] = ct[i];
    }

avgwt = 0;
  for (int i = 0; i < n; i++)
    {

      avgwt = avgwt + wt[i];

    }
  avgwt = avgwt / n;

  avgtat = 0;
  for (int i = 0; i < n; i++)
    {

      avgtat = avgtat + tt[i];

    }
  avgtat = avgtat / n;

  cout <<
    "\nProcess \tBurst Time\tWaiting Time \tTurn Around Time \tCompletion Time";
  for (int i = 0; i < n; i++)
    {

      cout << "\n" << p[i] << "\t\t  " << bt[i] << "\t\t  " << wt[i] << "\t\t  " << tt[i] <<"\t\t "<< ct[i];
    }

  cout << "\nAverage Waiting Time is : " << avgwt;
  cout << "\nAverage Turn Around Time is :" << avgtat;


}
