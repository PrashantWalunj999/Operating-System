echo How many number of terms are to be generated?
read N
A=0
B=1
i=0
echo Fibonacci Series up to $n terms :
echo A is $A
echo B is $B
while [ $i -le $N ]
do
C=`expr $A + $B`
echo $C
A=$B
B=$C
i=`expr $i + 1`
done 

#-------OUTPUT--------------
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ chmod +x fib.sh
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./fib.sh
#How many number of terms are to be generated?
#5
#Fibonacci Series up to terms :
#A is 0
#B is 1
#1
#2
#3
#5
#8
#13
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./fib.sh
#How many number of terms are to be generated?
#8
#Fibonacci Series up to terms :
#A is 0
#B is 1
#1
#2
#3
#5
#8
#13
#21
#34
#55
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ 

