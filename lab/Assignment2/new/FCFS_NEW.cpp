#include<iostream>
using namespace std;
int main()
{
	int n,at[20],bt[20],st[20],wt[20],tt[20],i,j;
	float wt_sum, tt_sum, avg_wt, avg_tt;
	cout<<"Enter the number of processes:"<<endl;
	cin>>n;
	cout<<"Enter process Arrival time:"<<endl;
	for(i=0;i<n;i++)
	{
		cout<<"P["<<i+1<<"]";
		cin>>at[i];
	}
	cout<<"Enter process burst time: "<<endl;
	for(i=0;i<n;i++)
	{
		cout<<"P["<<i+1<<"]: ";
		cin>>bt[i];
	}
	st[0]=0;
	for(i=1;i<n;i++)
	{
		st[i]=0;
		for(j=0;j<i;j++)
		st[i]+=bt[j];
	}
	cout<<"\nProcess\tArrival Time\tBurst Time\tService Time\tWaiting Time\tTurnaround Time"<<endl;
	for(i=0;i<n;i++)
	{
		wt[i]=0;
		wt[i]=st[i]-at[i];
		wt_sum += wt[i];
		
	}

	for(i=0; i<n; i++){
	
	tt[i] = st[i] + bt[i];
	cout << tt[i];
	tt_sum += tt[i];
	}

	for(i=0;i<n;i++)
	{
		avg_wt+=wt[i];
		cout<<"\nP["<<i+1<<"]"<<"\t"<<at[i]<<"\t\t"<<bt[i]<<"\t\t"<<st[i]<<"\t\t"<<wt[i]<<"\t\t"<<tt[i]<<endl;
	}


	avg_wt = wt_sum/n;
	cout << "\nAverage waiting time: " << avg_wt;

	avg_tt = tt_sum/n;
	cout << "\nAverage turnaround time: " << avg_tt ;

}

/* -----------------------OUTPUT---------------------------

[student@localhost ~]$ ./a.out
Enter the number of processes: 
4

Enter process Arrival time:
P[1]0
P[2]1
P[3]2
P[4]3

Enter process burst time: 
P[1]: 5
P[2]: 3
P[3]: 8
P[4]: 6

Process	Arrival Time	Burst Time	Service Time	Waiting Time	Turnaround Time

P[1]	0		5		0		0		5

P[2]	1		3		5		4		8

P[3]	2		8		8		6		16

P[4]	3		6		16		13		22

Average waiting time: 5.75
Average turnaround time: 12.75[student@localhost ~]$ 

 */

