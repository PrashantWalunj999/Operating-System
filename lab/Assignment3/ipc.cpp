#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

void processA(int);
void processB(int);

void processA(int writefd, int readfd)
{
	int len=0;
	char buff[80];
	printf("Enter the string :");
	fgets(buff,80,stdin);
	len=strlen(buff);

	if(buff[len-1]='\n')
	{
		len--;

	}
	write(writefd,buff,len);

	int n,i,j;
	char str[80],temp;
	n=read(readfd,str,80);
	//printf("Reversed string is %s\n",str);
}


void processB(int readfd, int writefd)
{
	int n,i,j;
	int len=0;
	char str[80],temp;
	n=read(readfd,str,80);
	str[n]='\0';
	i=0;
	j=strlen(str)-1;
	while(i<=j)
	{
		temp=str[i];
		str[i]=str[j];
		str[j]=temp;
		i++;
		j--;
	}
	//return str
	len=strlen(str);

	write(writefd,str,len);
	//printf(len);
	printf("Reversed string is %s\n",str);
}




int main()
{
	
	int pipe1[2];
	pid_t childpid;
	pipe(pipe1);
	childpid=fork();
	if(childpid==0)
	{
		wait(NULL);
		close(pipe1[1]);
		processB(pipe1[0], pipe1[1]);
	}
	else 
	{
		close(pipe1[0]);
		processA(pipe1[1], pipe1[0]);
	}
	return 0;
}


/*
:::::: OUTPUT ::::::

[student@MGL4 nikhil]$ g++ -o t twoway.cpp
[student@MGL4 nikhil]$ ./t
Enter the string :Hello
Reversed string is olleH
[student@MGL4 nikhil]$ ./t
Enter the string :I Am Don
Reversed string is noD mA I
[student@MGL4 nikhil]$ 
*/





