echo 'enter string1'
read str1
echo 'enter string2'
read str2
if [ $str1 = $str2 ]
then
echo 'String is equal'
else 
echo 'String unequal'
fi


#-----OUTPUT-------
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ chmod +x compare.sh
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./compare.sh
#enter string1
#5
#enter string2
#5
#String is equal
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./compare.sh
#enter string1
#5
#enter string2
#4
#String unequal
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ 

