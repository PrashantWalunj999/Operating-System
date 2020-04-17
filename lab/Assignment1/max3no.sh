echo enter a
read a
echo enter b
read b
echo enter c
read c
if [ $a -gt  $b -a $a  -gt  $c ]
then
echo a is greater
elif [ $b -gt $a -a $b -gt $c ]
then
echo b is greater
else
echo c is greater
fi

#-----OUTPUT-------
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ chmod +x max3no.sh
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./max3no.sh
#enter a
#5
#enter b
#7
#enter c
#2
#b is greater
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$

