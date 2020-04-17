/*
	FIFO Page Replacement Algorithm
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
void add_reference(int frame_size,int frame[], int reference)
{
	int i;
	bool alloted = false;
	for(i=0;i<frame_size;i++)
	{
		if(frame[i]==reference)
		{
			alloted = true;
			printf("  Hit for %d | ", reference);
			hits++;
			break;
		}
		else if(frame[i]==-1)
		{
			alloted = true;
			frame[i] = reference;
			printf("Fault for %d | ", reference);
			faults++;
			break;
		}
	}
	if(alloted == false)
	{
		faults++;
		printf("Fault for %d | ", reference);
		frame[pointer] = reference;
		pointer = (pointer+1)%frame_size;
	}
	print(frame_size, frame);
}

int main()
{
	int frame_size,i,number_of_references;
    double fault_rate;
	printf("Enter frame size: ");
	scanf("%d",&frame_size);
	int frame[frame_size];
	for(i=0;i<frame_size;i++)
	{
		frame[i] = -1;
	}
	print(frame_size,frame);
	printf("Enter the number of references string: ");
	scanf("%d",&number_of_references);
	int reference[number_of_references];

	for(i=0;i<number_of_references;i++)
	{
		scanf("%d",&reference[i]);
		add_reference(frame_size,frame,reference[i]);
	}
	printf("\nNumber of faults: %d \nNumber of hits: %d\n",faults,hits );
    fault_rate=(double)faults/number_of_references;
    printf("\nFault rate:%f\n",fault_rate);
}

/*
::OUTPUT::

PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/TYB350/Sem1/os/lab/Assignment5$ g++ -o fifo fifo.c
PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/TYB350/Sem1/os/lab/Assignment5$ ./fifoEnter frame size: 4
- - - -
Enter the number of references string: 12
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
Fault for 0 | 4 0 1 6
1
  Hit for 1 | 4 0 1 6
0
  Hit for 0 | 4 0 1 6
3
Fault for 3 | 4 0 3 6
1
Fault for 1 | 4 0 3 1
2
Fault for 2 | 2 0 3 1
1
  Hit for 1 | 2 0 3 1

Number of faults: 9
Number of hits: 3

Fault rate:0.750000

PrashantWalunj@PrashantWalunjB350/Sem1/os/lab/Assignment5$
*/