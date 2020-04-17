#!/bin/bash
#   OS MINIPROJECT

echo "1.Directory" 
echo "2.Create "
echo " 3.Copy "
echo " 4.Delete "
echo " 5.Rename " 
echo "6.compress" 
echo "7.uncompress" 
echo "8.Present Working Directory" 
echo "9.search" 
echo "10.give the permission to read-only:"
echo "11.give the permission to read-write:" 
echo "12.showing directory size" 
echo "13.uptime"


echo " Enter your choice "
read ch

case $ch in
(1) echo "ente the the directory name:"
    read name1
    mkdir name1
    cd name1
;;

(2) echo " Enter the filename which u want to b create: "
    read filename
    if test -f $filename 
    then
    echo " File is already existed "
    else
    if touch $filename
    then
    echo " File is created "
    ls -l
    fi
;;

(3) echo " Enter the filename which u want to b copy: "
    read file1
    echo " The destination file is: "
    read file2
    if test -f $file1
    then
    cp $file1 $file2
    echo " File is successfully copied "
    else
    echo " Operation unsuccessful "
    ls
    fi
;;

(4) echo " Enter the filename which u want to b delete: "
    read filename
    if test -f $filename
    then
    rm  $filename
    echo " File is successfully deleted "
    else
    echo " Operation unsuccessful "
    fi
;;

(5) echo " Enter the filename which u want to b rename: "
    read file1
    echo " Enter the name of file: "
    read file2
    if test -f $file1
    then
    mv $file1 $file2
    echo " File is successfully renamed "
    else
    echo " Operation unsuccessful "
    ls
    fi
;;

(6)echo "enter the filename to compress:"
   read file5
   ls
   if test -f $file5
   then 
   compress -v file5
   echo "file is successfully compress"
   else
   echo "operation unsuccessfull:"
   fi 
;;

(7)echo "enter the filename to uncompress:"
   read file6
   if test -f $file6
   then 
   uncompress file6
   echo "file is succesfully uncompress:"
   else
   echo "operation unsuccesfull:"
   fi
;;

(8)pwd
;;

(9)echo "enter the name of file u want to search:"
  read s_fname
  find . -name $s_fname 
;;

(10)echo "enter the file to read permission:"
   read r_name
   if test -f $r_name
   then 
   chmod 664 $r_name
   echo "file is succesfully read permiision:"
   else
   echo "operation is unsuccesfully:"
   ls -l
   fi
;;

(11)echo "enter the name of file u want to give the permiision to read-write:"
   read w_name
   if test -f $w_name
   then 
   chmod 744 $w_name
   echo "file is succesfully read-write permiision:"
   else
   echo "operation is unsuccesfully:"
   fi
;;

(12)echo "showing Present Working Directory directory size"
    pwd
    read x
    du -sh "$x"
;;

(13)echo "The current time, how long the system has been running"
    echo "$(uptime)" >> "$(date)".txt
    echo "Your File is being saved to $(pwd)"
;;
      
(*) echo " Invalid Choice "

esac






