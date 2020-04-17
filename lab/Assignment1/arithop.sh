sum=0
i="y"

echo " Enter first no."
read n1
echo "Enter second no."
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
case $ch in
    1)sum=`expr $n1 + $n2`
         echo "Sum ="$sum;;
    2)sum=`expr $n1 - $n2`
         echo "Sub = "$sum;;
    3)sum=`expr $n1 \* $n2`
         echo "Mul = "$sum;;
    4)sum=`expr $n1 / $n2`
         echo "Div = "$sum;;
    *)
         echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done    

#------------OUTPUT------------------
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ chmod +x arithop.sh
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$ ./arithop.sh
# Enter first no.
#2
#Enter second no.
#3
#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#Enter your choice
#1
#Sum =5
#Do u want to continue ?
#y
#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#Enter your choice
#2
#Sub = -1
#Do u want to continue ?
#y
#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#Enter your choice
#3
#Mul = 6
#Do u want to continue ?
#y
#1.Addition
#2.Subtraction
#3.Multiplication
#4.Division
#Enter your choice
#4
#Div = 0
#Do u want to continue ?
#0
#PrashantWalunj@PrashantWalunj:/mnt/e/Prashant/tyb350/sem1/os/lab/Assignment1$
