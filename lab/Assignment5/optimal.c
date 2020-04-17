/*
	Optimal Page Replacement Algorithm
*/

#include "stdio.h"
#include "stdlib.h"
#include "stdbool.h"

int pointer;
int faults ,hits;
void print(int frame_size,int frame[])
{
	int i;
	//printf("Printing the Frames: ");
	for(i=0;i<frame_size;i++)
	{
		if(frame[i]==-1)
			printf("- ");
		else
			printf("%d ",frame[i]);
	}
	printf("\n");
}

int predict(int reference_length, int references[], int page_no ,int frame_size,int frame[], int start)
{
	int pos = -1, farthest = start, i;
    	for(i=0;i<frame_size;i++)
{
		int j;
		for(j=start;j<reference_length;j++)
		{
			if(frame[i]==references[j])
			{
				if(j>farthest)
				{
					farthest=j;
					pos=i;
				}
				break;
			}
		}
		if(j==page_no)
			return i;
	}
	if(pos == -1)
		return 0;
	else
		return pos;
}

void add_reference(int frame_size,int frame[], int reference, int current_position,int reference_length, int references[])
{
	int i;
	bool allocated=false;
	for(i=0;i<frame_size;i++)
	{
		if(frame[i]==reference)
		{
			printf("  Hit for %d | ", reference);
			hits++;
			allocated = true;
			break;
		}
		else if(frame[i]==-1)
		{
			frame[i] = reference;
			printf("Fault for %d | ", reference);
			faults++;
			allocated = true;
			break;
		}
	}

	if(allocated==false)
	{
		int j = predict(reference_length,references,current_position,frame_size,frame,current_position+1);
		frame[j] = reference;
		printf("Fault for %d | ", reference);
		faults++;	
	}
	print(frame_size, frame);
}

int main()
{
	int frame_size,i,number_of_references;
    float fault_rate;
	printf("Enter frame size: ");
	scanf("%d",&frame_size);
	int frame[frame_size];
	for(i=0;i<frame_size;i++)
	{
		frame[i] = -1;
	}
	print(frame_size,frame);
	printf("Enter the number of references: ");
	scanf("%d",&number_of_references);
	int reference[number_of_references];

	for(i=0;i<number_of_references;i++)
	{
		scanf("%d",&reference[i]);
		add_reference(frame_size,frame,reference[i],i,number_of_references,reference);
	}
	printf("\nNumber of faults: %d \nNumber of hits: %d\n",faults,hits );
    fault_rate=(double)faults/number_of_references;
    printf("\nFault rate:%f\n",fault_rate);
}

/*
::OUTPUT::

PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/TYB350/Sem1/os/lab/Assignment5$ g++ -o optimal optimal.c
PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/TYB350/Sem1/os/lab/Assignment5$ ./optimalEnter frame size: 4
- - - -
Enter the number of references: 12
0
Fault for 0 | 0 - - -
2
Fault for 2 | 0 2 - -
1
Fault for 1 | 0 2 1 -
6
Fault for 6 | 0 2 1 6
4
Fault for 4 | 4 2 1 6
0
Fault for 0 | 0 2 1 6
1
  Hit for 1 | 0 2 1 6
0
  Hit for 0 | 0 2 1 6
3
Fault for 3 | 3 2 1 6
1
  Hit for 1 | 3 2 1 6
2
  Hit for 2 | 3 2 1 6
1
  Hit for 1 | 3 2 1 6

Number of faults: 7
Number of hits: 5

Fault rate:0.583333
PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/TYB350/Sem1/os/lab/Assignment5$
*/