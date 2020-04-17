
#include<iostream>
using namespace std;
int main ()
{
  int n, temp;
  float avgwt, avgtat;
  int p[n], bt[n], bt1[n], st[n], wt[n], tat[n];
  cout << "Enter total number of processes :";
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

    }


  for (int i = 0; i < n - 1; i++)
    {
      for (int j = 0; j < n - 1; j++)
	{
	  if (bt[j] > bt[j + 1])
	    {
	      temp = bt[j];
	      bt[j] = bt[j + 1];
	      bt[j + 1] = temp;

	    }
	}
    }

  st[0] = 0;
  for (int i = 1; i < n; i++)
    {

      st[i] = st[i - 1] + bt[i - 1];

    }

  for (int i = 0; i < n; i++)
    {

      wt[i] = st[i];

    }

  for (int i = 0; i < n; i++)
    {

      tat[i] = st[i] + bt[i];

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

      avgtat = avgtat + tat[i];

    }
  avgtat = avgtat / n;

  cout <<
    "\nProcess \tBurst Time \tService Time \tWaiting Time \tTurn Around Time";
  for (int i = 0; i < n; i++)
    {

      cout << "\n" << p[i] << "\t\t  " << bt1[i] << "\t\t  " << st[i] << "\t\t  " <<
	wt[i] << "\t\t  " << tat[i];
    }

  cout << "\nAverage Waiting Time is : " << avgwt;
  cout << "\nAverage Turn Around Time is :" << avgtat;



}

/* Output
Enter total number of processes :4                                                                                                             
Enter name of Processes : 0                                                                                                                    
1                                                                                                                                              
2                                                                                                                                              
3                                                                                                                                              
                                                                                                                                               
Enter Process Burst Time
Burst time of process 0 is : 5                                                                                                                 
                                                                                                                                               
Burst time of process 1 is : 6                                                                                                                 
                                                                                                                                               
Burst time of process 2 is : 9                                                                                                                 
                                                                                                                                               
Burst time of process 3 is : 3 

Process         Burst Time      Service Time    Waiting Time    Turn Around Time                                                               
0                 5               0               0               3                                                                            
1                 6               3               3               8                                                                            
2                 9               8               8               14                                                                           
3                 3               14              14              23                                                                           
Average Waiting Time is : 6.25                                                                                                                 
Average Turn Around Time is :12
--------------------------------
Process exited after 27.74 seconds with return value 0
Press any key to continue . . .
*/

