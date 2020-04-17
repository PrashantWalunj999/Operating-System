get()
{
echo empid
read empid
echo deduction
read ded
echo allowance
read allow
echo basic salary
read salary
}

get $empid $ded $allow $salary
gross_sal=$(($salary + $allow))
echo Gross salary is $gross_sal
Net_sal=$(($gross_sal - $ded))
echo Net salary is $Net_sal

#------OUTPUT-------
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ chmod +x payroll.sh
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./payroll.sh
#empid
#1
#deduction
#400
#allowance
#800
#basic salary
#3000
#Gross salary is 3800
#Net salary is 3400
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$


