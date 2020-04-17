#!/bin/bash
#My first script
ch=1
while [ $ch -le 17 ]
do
echo " 1.Create a directory:"
echo " 2.create file:"
echo " 3.copy: "
echo " 4.rename"
echo " 5.delete"
echo " 7.present working directory:"
echo " 8.search:"
echo " 9.add user:"
echo " 10.delete user"
echo " 11.FAP"
echo " 12.display"
echo " 13.uptime:"
echo " 14.Display process in current shell "
echo " 15.Display all information about all processes "
echo " 16.show the file size:"
echo " 17.thank:"
echo " Enter your choice "
read ch
case $ch in
(1) echo " Enter the directory name which u want to b create: "
    read  directoryname
    if test [ -d $directoryname ]
    then
    echo " Directory is already existed "
    else
    if mkdir $directoryname 
    then
    echo " Directory is created "
    fi
    fi
;;

(2) echo " Enter the filename which u want to b create: "
    read filename
    if test -f $filename 
    then
    echo " File is already existed "
    else
    if touch $filename
    then
    echo " File is created\n "
    fi
    fi
;;

(3) echo " Enter the filename which u want to b copy: "
    read file1
    echo " The destination file is: "
    read file2
    if test -f $file1
    then
    cp $file1 $file2
    echo " File is successfully copied\n "
    else
    echo " Operation unsuccessful \n"
    fi
;;

(4) echo " Enter the filename which u want to b rename: "
    read file11
    echo " Enter the name of file:\n"
    read file22
    if test -f $file11
    then
    mv $file11 $file22
    echo " File is successfully renamed\n "
    else
    echo " Operation unsuccessful \n"
    fi
;;

(5)echo " Enter the filename which u want to b delete: "
    read filename1
    if test -f $filename1
    then
    rm  $filename1
    echo " File is successfully deleted \n"
    else
    echo " Operation unsuccessful\n "
    fi
;;

(7) echo "present working directory:"
    pwd
    echo "\n"
;;

(8) echo "enter the file name to search:"
    read -r a
    if find . -maxdepth 1 -name "$a" -print -quit | grep -q . 
    then
    echo "You found the file.\n"
    else 
    echo "You haven't found the file.\n"
    fi
;;

(9) echo " Add user "
    read username
    useradd $username
    echo " User added successfully.\n "
;;

(10)echo " Delete user "
    read username
    userdel $username
    echo " User deleted successfully.\n "
;;

(11)echo " Enter the file name "
    read filename6
    if test -f $filename6
    then
    echo " Enter the permission for owner."
    read u
    echo " Enter the permission for group. "
    read g
    echo " Enter the permission for other. \n"
    read o
    chmod $u$g$o $filename
    else
    echo " File does not existed.\n "
    fi
;;

(12)echo "\n Display the File access permissions "
    read filename4
    ls -l $filename
;;

(13)echo "the output has got for parts:currenttime,uptime,number of users and average load mentioned earlier"
   echo "\n" 
   uptime
;;

(14)echo " Display process in current shell "
    ps -l
;;

(15)echo " Display all information about all processes "
    ps -ef
;;

(16)echo " display the file size:"
    read file007
    if test -f $file007
    then
    du -h $file007
    echo "display the size:"
    else
    echo "file not found:"
    fi
;;

(17)echo "thanks:"
    banner thanks
;;


esac
done
exit 0




**************************output*************************************


aditya@aditya-HP-Pavilion-15-Notebook-PC:~$ cd Desktop/
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop$ cd operatingsystemlab/
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ ls -l
total 180
-rw-rw-r-- 1 aditya aditya     13 Oct  4 09:28 777
drwxrwxr-x 2 aditya aditya   4096 Oct  4 10:27 lll
drwxrwxr-x 2 aditya aditya   4096 Oct  2 20:52 mini
-rw-rw-r-- 1 aditya aditya 150828 Oct  4 09:51 mini.sh
drwxrwxr-x 2 aditya aditya   4096 Oct  4 09:27 mit
-rw-rw-r-- 1 aditya aditya     13 Oct  4 09:28 mit123
-rw-rw-r-- 1 aditya aditya   3065 Oct  4 09:53 operating.sh
-rw-rw-r-- 1 aditya aditya   3246 Oct  4 10:29 project.sh
drwxrwxr-x 2 aditya aditya   4096 Oct  4 10:28 riy
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ sh project.sh
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
1
 Enter the directory name which u want to b create: 
mitaoe
project.sh: 27: test: [: unexpected operator
 Directory is created 
project.sh: 4: [: -le: unexpected operator
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ sh project.sh
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
2
 Enter the filename which u want to b create: 
mitaoealandi 
 File is created
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
3
 Enter the filename which u want to b copy: 
mitaoe
 The destination file is: 
mitaoealandi
 Operation unsuccessful 

 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
1
 Enter the directory name which u want to b create: 
mit
project.sh: 27: test: [: unexpected operator
 Directory is created 
project.sh: 4: [: -le: unexpected operator
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ 
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ 
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ 
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ sh project.sh
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
1
 Enter the directory name which u want to b create: 
mit
project.sh: 27: test: [: unexpected operator
 Directory is created 
project.sh: 4: [: -le: unexpected operator
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ 2
2: command not found
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ sh project.sh
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
2
 Enter the filename which u want to b create: 
mitaoe
 File is created
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
2
 Enter the filename which u want to b create: 
mitaoe.sh
 File is created
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
3
 Enter the filename which u want to b copy: 
mitaoe.sh
 The destination file is: 
mitaoe1.sh
 File is successfully copied
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
4
 Enter the filename which u want to b rename: 
mitaoe.sh
 Enter the name of file:

mitaoe2.sh        
 File is successfully renamed
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
5
 Enter the filename which u want to b delete: 
mitaoe2.sh
 File is successfully deleted 

 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
7
present working directory:
/home/aditya/Desktop/operatingsystemlab


 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
5
 Enter the filename which u want to b delete: 
mitaoe1.sh
 File is successfully deleted 

 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
9
 Add user 
aditya396
useradd: Permission denied.
useradd: cannot lock /etc/passwd; try again later.
 User added successfully.
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
9
 Add user 
aditya123
useradd: Permission denied.
useradd: cannot lock /etc/passwd; try again later.
 User added successfully.
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
10
 Delete user 
aditya123
userdel: user 'aditya123' does not exist
 User deleted successfully.
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
11
 Enter the file name 
7
 File does not existed.
 
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
11
 Enter the file name 
mini.sh
 Enter the permission for owner.
7
 Enter the permission for group. 
4
 Enter the permission for other. 

4
chmod: cannot access 'mitaoe.sh': No such file or directory
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
12

 Display the File access permissions 
mini.sh
ls: cannot access 'mitaoe.sh': No such file or directory
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
12

 Display the File access permissions 
mini.sh
ls: cannot access 'mitaoe.sh': No such file or directory
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
12

 Display the File access permissions 
project.sh
ls: cannot access 'mitaoe.sh': No such file or directory
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
13
the output has got for parts:currenttime,uptime,number of users and average load mentioned earlier


 18:19:11 up 11 min,  1 user,  load average: 0.02, 0.18, 0.21
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
14
 Display process in current shell 
F S   UID   PID  PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
0 S  1000  1878  1859  0  80   0 -  5674 wait   pts/8    00:00:00 bash
0 S  1000  2113  1878  0  80   0 -  1126 wait   pts/8    00:00:00 sh
0 R  1000  2209  2113  0  80   0 -  7229 -      pts/8    00:00:00 ps
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
15
 Display all information about all processes 
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 18:07 ?        00:00:01 /sbin/init splash
root         2     0  0 18:07 ?        00:00:00 [kthreadd]
root         3     2  0 18:07 ?        00:00:00 [ksoftirqd/0]
root         4     2  0 18:07 ?        00:00:00 [kworker/0:0]
root         5     2  0 18:07 ?        00:00:00 [kworker/0:0H]
root         6     2  0 18:07 ?        00:00:00 [kworker/u16:0]
root         7     2  0 18:07 ?        00:00:00 [rcu_sched]
root         8     2  0 18:07 ?        00:00:00 [rcu_bh]
root         9     2  0 18:07 ?        00:00:00 [migration/0]
root        10     2  0 18:07 ?        00:00:00 [watchdog/0]
root        11     2  0 18:07 ?        00:00:00 [watchdog/1]
root        12     2  0 18:07 ?        00:00:00 [migration/1]
root        13     2  0 18:07 ?        00:00:00 [ksoftirqd/1]
root        14     2  0 18:07 ?        00:00:00 [kworker/1:0]
root        15     2  0 18:07 ?        00:00:00 [kworker/1:0H]
root        16     2  0 18:07 ?        00:00:00 [watchdog/2]
root        17     2  0 18:07 ?        00:00:00 [migration/2]
root        18     2  0 18:07 ?        00:00:00 [ksoftirqd/2]
root        20     2  0 18:07 ?        00:00:00 [kworker/2:0H]
root        21     2  0 18:07 ?        00:00:00 [watchdog/3]
root        22     2  0 18:07 ?        00:00:00 [migration/3]
root        23     2  0 18:07 ?        00:00:00 [ksoftirqd/3]
root        25     2  0 18:07 ?        00:00:00 [kworker/3:0H]
root        26     2  0 18:07 ?        00:00:00 [kdevtmpfs]
root        27     2  0 18:07 ?        00:00:00 [netns]
root        28     2  0 18:07 ?        00:00:00 [perf]
root        29     2  0 18:07 ?        00:00:00 [khungtaskd]
root        30     2  0 18:07 ?        00:00:00 [writeback]
root        31     2  0 18:07 ?        00:00:00 [ksmd]
root        32     2  0 18:07 ?        00:00:00 [khugepaged]
root        33     2  0 18:07 ?        00:00:00 [crypto]
root        34     2  0 18:07 ?        00:00:00 [kintegrityd]
root        35     2  0 18:07 ?        00:00:00 [bioset]
root        36     2  0 18:07 ?        00:00:00 [kblockd]
root        38     2  0 18:07 ?        00:00:00 [ata_sff]
root        39     2  0 18:07 ?        00:00:00 [md]
root        40     2  0 18:07 ?        00:00:00 [devfreq_wq]
root        41     2  0 18:07 ?        00:00:00 [kworker/u16:1]
root        42     2  0 18:07 ?        00:00:00 [kworker/2:1]
root        44     2  0 18:07 ?        00:00:00 [kswapd0]
root        45     2  0 18:07 ?        00:00:00 [vmstat]
root        46     2  0 18:07 ?        00:00:00 [fsnotify_mark]
root        47     2  0 18:07 ?        00:00:00 [ecryptfs-kthrea]
root        63     2  0 18:07 ?        00:00:00 [kthrotld]
root        65     2  0 18:07 ?        00:00:00 [kworker/3:1]
root        66     2  0 18:07 ?        00:00:00 [acpi_thermal_pm]
root        67     2  0 18:07 ?        00:00:00 [bioset]
root        68     2  0 18:07 ?        00:00:00 [bioset]
root        69     2  0 18:07 ?        00:00:00 [bioset]
root        70     2  0 18:07 ?        00:00:00 [bioset]
root        71     2  0 18:07 ?        00:00:00 [bioset]
root        72     2  0 18:07 ?        00:00:00 [bioset]
root        73     2  0 18:07 ?        00:00:00 [bioset]
root        74     2  0 18:07 ?        00:00:00 [bioset]
root        79     2  0 18:07 ?        00:00:00 [ipv6_addrconf]
root        92     2  0 18:07 ?        00:00:00 [deferwq]
root        93     2  0 18:07 ?        00:00:00 [charger_manager]
root       141     2  0 18:07 ?        00:00:00 [kpsmoused]
root       142     2  0 18:07 ?        00:00:00 [kworker/2:2]
root       143     2  0 18:07 ?        00:00:00 [scsi_eh_0]
root       144     2  0 18:07 ?        00:00:00 [scsi_tmf_0]
root       145     2  0 18:07 ?        00:00:00 [scsi_eh_1]
root       146     2  0 18:07 ?        00:00:00 [scsi_tmf_1]
root       147     2  0 18:07 ?        00:00:00 [scsi_eh_2]
root       148     2  0 18:07 ?        00:00:00 [scsi_tmf_2]
root       149     2  0 18:07 ?        00:00:00 [scsi_eh_3]
root       150     2  0 18:07 ?        00:00:00 [scsi_tmf_3]
root       153     2  0 18:07 ?        00:00:00 [kworker/0:2]
root       155     2  0 18:07 ?        00:00:00 [kworker/u16:7]
root       157     2  0 18:07 ?        00:00:00 [ttm_swap]
root       159     2  0 18:07 ?        00:00:00 [bioset]
root       160     2  0 18:07 ?        00:00:00 [bioset]
root       163     2  0 18:07 ?        00:00:00 [kworker/0:1H]
root       185     2  0 18:07 ?        00:00:00 [kworker/1:1H]
root       187     2  0 18:07 ?        00:00:00 [jbd2/sda2-8]
root       188     2  0 18:07 ?        00:00:00 [ext4-rsv-conver]
root       215     1  0 18:07 ?        00:00:00 /lib/systemd/systemd-journald
root       221     2  0 18:07 ?        00:00:00 [kauditd]
root       247     2  0 18:07 ?        00:00:00 [kworker/3:2]
root       249     2  0 18:07 ?        00:00:00 [kworker/2:1H]
root       261     1  0 18:07 ?        00:00:00 /lib/systemd/systemd-udevd
root       339     2  0 18:07 ?        00:00:00 [kworker/3:1H]
root       386     2  0 18:07 ?        00:00:00 [irq/45-mei_me]
root       397     2  0 18:07 ?        00:00:00 [cfg80211]
systemd+   642     1  0 18:07 ?        00:00:00 /lib/systemd/systemd-timesyncd
syslog     786     1  0 18:07 ?        00:00:00 /usr/sbin/rsyslogd -n
root       798     1  0 18:07 ?        00:00:00 /usr/sbin/cron -f
root       804     1  0 18:07 ?        00:00:00 /usr/sbin/thermald --no-daemon -
avahi      809     1  0 18:07 ?        00:00:00 avahi-daemon: running [aditya-HP
message+   814     1  0 18:07 ?        00:00:00 /usr/bin/dbus-daemon --system --
avahi      846   809  0 18:07 ?        00:00:00 avahi-daemon: chroot helper
root       847     1  0 18:07 ?        00:00:00 /usr/lib/accountsservice/account
root       850     1  0 18:07 ?        00:00:00 /usr/sbin/acpid
root       853     1  0 18:07 ?        00:00:00 /usr/sbin/ModemManager
root       854     1  0 18:07 ?        00:00:00 /usr/sbin/NetworkManager --no-da
root       857     1  0 18:07 ?        00:00:00 /lib/systemd/systemd-logind
root       858     1  0 18:07 ?        00:00:00 /usr/sbin/cupsd -l
root       859     1  0 18:07 ?        00:00:00 /usr/sbin/cups-browsed
root       864     1  0 18:07 ?        00:00:00 /usr/lib/snapd/snapd
root       909     1  0 18:07 ?        00:00:00 /usr/sbin/irqbalance --pid=/var/
root       918     1  0 18:07 ?        00:00:00 /usr/sbin/lightdm
root       934     1  0 18:07 ?        00:00:00 /usr/lib/policykit-1/polkitd --n
root       940   918  1 18:07 tty7     00:00:07 /usr/lib/xorg/Xorg -core :0 -sea
lp         952   858  0 18:07 ?        00:00:00 /usr/lib/cups/notifier/dbus dbus
lp         953   858  0 18:07 ?        00:00:00 /usr/lib/cups/notifier/dbus dbus
mysql      969     1  0 18:07 ?        00:00:00 /usr/sbin/mysqld
root       994     1  0 18:07 ?        00:00:00 /sbin/wpa_supplicant -u -s -O /r
whoopsie  1083     1  0 18:08 ?        00:00:00 /usr/bin/whoopsie -f
root      1089     1  0 18:08 tty1     00:00:00 /sbin/agetty --noclear tty1 linu
root      1130   918  0 18:08 ?        00:00:00 lightdm --session-child 12 19
rtkit     1195     1  0 18:08 ?        00:00:00 /usr/lib/rtkit/rtkit-daemon
root      1206     1  0 18:08 ?        00:00:00 /usr/lib/upower/upowerd
colord    1238     1  0 18:08 ?        00:00:00 /usr/lib/colord/colord
aditya    1262     1  0 18:08 ?        00:00:00 /lib/systemd/systemd --user
aditya    1263  1262  0 18:08 ?        00:00:00 (sd-pam)
aditya    1269     1  0 18:08 ?        00:00:00 /usr/bin/gnome-keyring-daemon --
aditya    1271  1130  0 18:08 ?        00:00:00 /sbin/upstart --user
aditya    1360  1271  0 18:08 ?        00:00:00 upstart-udev-bridge --daemon --u
aditya    1361  1271  0 18:08 ?        00:00:00 dbus-daemon --fork --session --a
aditya    1373  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/hud/wi
aditya    1397  1271  0 18:08 ?        00:00:02 /usr/bin/ibus-daemon --daemonize
aditya    1407  1271  0 18:08 ?        00:00:00 upstart-dbus-bridge --daemon --s
aditya    1408  1271  0 18:08 ?        00:00:00 upstart-dbus-bridge --daemon --s
aditya    1414  1271  0 18:08 ?        00:00:00 upstart-file-bridge --daemon --u
aditya    1425  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfsd
aditya    1430  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfsd-fuse /run/us
aditya    1439  1397  0 18:08 ?        00:00:00 /usr/lib/ibus/ibus-dconf
aditya    1440  1397  0 18:08 ?        00:00:00 /usr/lib/ibus/ibus-ui-gtk3
aditya    1446  1271  0 18:08 ?        00:00:00 /usr/lib/ibus/ibus-x11 --kill-da
aditya    1457  1397  0 18:08 ?        00:00:00 /usr/lib/ibus/ibus-engine-simple
aditya    1466  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/bamf/b
aditya    1471  1271  0 18:08 ?        00:00:00 gpg-agent --homedir /home/aditya
aditya    1481  1271  0 18:08 ?        00:00:01 /usr/lib/x86_64-linux-gnu/hud/hu
aditya    1483  1271  0 18:08 ?        00:00:00 /usr/lib/unity-settings-daemon/u
aditya    1493  1271  0 18:08 ?        00:00:00 /usr/lib/at-spi2-core/at-spi-bus
aditya    1494  1271  0 18:08 ?        00:00:00 /usr/lib/gnome-session/gnome-ses
aditya    1502  1493  0 18:08 ?        00:00:00 /usr/bin/dbus-daemon --config-fi
aditya    1509  1271  0 18:08 ?        00:00:01 /usr/lib/x86_64-linux-gnu/unity/
aditya    1526  1271  0 18:08 ?        00:00:00 /usr/lib/at-spi2-core/at-spi2-re
aditya    1530  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1531  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1532  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1533  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1542  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1544  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1546  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1547  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1578  1271  0 18:08 ?        00:00:00 /usr/lib/evolution/evolution-sou
aditya    1587  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/indica
aditya    1595  1483  0 18:08 ?        00:00:00 syndaemon -i 1.0 -t -K -R
aditya    1606  1271  0 18:08 ?        00:00:00 /usr/bin/pulseaudio --start --lo
aditya    1627  1271  0 18:08 ?        00:00:00 /usr/lib/dconf/dconf-service
aditya    1659  1494  0 18:08 ?        00:00:00 /usr/bin/gnome-software --gappli
aditya    1663  1271  1 18:08 ?        00:00:11 compiz
aditya    1664  1494  0 18:08 ?        00:00:00 /usr/lib/unity-settings-daemon/u
aditya    1665  1494  0 18:08 ?        00:00:00 /usr/lib/policykit-1-gnome/polki
aditya    1670  1494  0 18:08 ?        00:00:00 nm-applet
aditya    1672  1494  0 18:08 ?        00:00:04 nautilus -n
aditya    1688  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfs-udisks2-volum
root      1691     1  0 18:08 ?        00:00:00 /usr/lib/udisks2/udisksd --no-de
aditya    1705  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfs-mtp-volume-mo
aditya    1710  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfs-afc-volume-mo
aditya    1716  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfs-gphoto2-volum
aditya    1719  1271  0 18:08 ?        00:00:00 /usr/lib/evolution/evolution-cal
aditya    1724  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfs-goa-volume-mo
aditya    1734  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/notify
aditya    1751  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfsd-trash --spaw
aditya    1773  1271  0 18:08 ?        00:00:00 /usr/lib/gvfs/gvfsd-metadata
aditya    1785  1719  0 18:08 ?        00:00:00 /usr/lib/evolution/evolution-cal
aditya    1795  1271  0 18:08 ?        00:00:00 /usr/lib/evolution/evolution-add
aditya    1797  1719  0 18:08 ?        00:00:00 /usr/lib/evolution/evolution-cal
aditya    1822  1795  0 18:08 ?        00:00:00 /usr/lib/evolution/evolution-add
aditya    1857  1494  0 18:08 ?        00:00:00 zeitgeist-datahub
aditya    1859  1271  0 18:08 ?        00:00:02 /usr/lib/gnome-terminal/gnome-te
aditya    1869  1271  0 18:08 ?        00:00:00 /bin/sh -c /usr/lib/x86_64-linux
aditya    1873  1869  0 18:08 ?        00:00:00 /usr/bin/zeitgeist-daemon
aditya    1878  1859  0 18:08 pts/8    00:00:00 bash
aditya    1890  1271  0 18:08 ?        00:00:00 /usr/lib/x86_64-linux-gnu/zeitge
aditya    1949  1494  0 18:09 ?        00:00:00 update-notifier
aditya    1990  1494  0 18:10 ?        00:00:00 /usr/lib/x86_64-linux-gnu/deja-d
aditya    2006  1271  0 18:10 ?        00:00:00 /usr/lib/gvfs/gvfsd-network --sp
aditya    2035  1271  0 18:10 ?        00:00:00 /usr/lib/gvfs/gvfsd-dnssd --spaw
aditya    2113  1878  0 18:13 pts/8    00:00:00 sh project.sh
root      2117     2  0 18:13 ?        00:00:00 [kworker/1:2]
root      2149     2  0 18:14 ?        00:00:00 [kworker/2:0]
aditya    2212  2113  0 18:19 pts/8    00:00:00 ps -ef
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
16
 display the file size:
mini.sh
148K	mini.sh
display the size:
 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
17
thanks:

  #####  #    #    ##    #    #  #    #   ####
    #    #    #   #  #   ##   #  #   #   #
    #    ######  #    #  # #  #  ####     ####
    #    #    #  ######  #  # #  #  #         #
    #    #    #  #    #  #   ##  #   #   #    #
    #    #    #  #    #  #    #  #    #   ####

 1.Create a directory:
 2.create file:
 3.copy: 
 4.rename
 5.delete
 7.present working directory:
 8.search:
 9.add user:
 10.delete user
 11.FAP
 12.display
 13.uptime:
 14.Display process in current shell 
 15.Display all information about all processes 
 16.show the file size:
 17.thank:
 Enter your choice 
^Aproject.sh: 4: [: Illegal number: 
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ ^C
aditya@aditya-HP-Pavilion-15-Notebook-PC:~/Desktop/operatingsystemlab$ 


