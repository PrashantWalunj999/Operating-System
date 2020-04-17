#                 ASSIGNMENT MEMORY MANAGEMENT
#                 ASSIGNMENT 6
# nikhil potale

echo "All the files in the present directory: "
ls

echo "A new directory has been created: "
mkdir new_dir
cd new_dir

i="y"

while [ $i = "y" ]
do

echo "1.List of files and directories"
echo "2.Create Directory"
echo "3.Create File"
echo "4.Rename file/directory"
echo "5.Delete file"
echo "6.Delete directory"
echo "7.Search a file"
echo "8.Check present directory"

echo "Enter your choice"
read ch
case $ch in

	1)ls;;
         		
    2)echo "Enter the new directory name : "
		read dname
		mkdir $dname

		echo "File and Directories in " $dname
		ls	;;
		
		
	3)echo "Enter the new file name with extension : "
		read fname
		gedit $fname

		echo "File and Directories in " $dname
		ls	;;
	

	4)echo "Enter the old file name to be renamed : "
		read old_fname
		echo "Enter the new file name to be renamed : "
		read new_fname
		mv $old_fname $new_fname

		echo "File and Directories in " $dname
		ls	;;
		
		
	5)echo "Enter the file name to be deleted : "
		read del_fname
		rm -f $del_fname
		echo "File and Directories in " $dname
		ls;;	
		

	6)echo "Enter the directory to be deleted : "
		read del_dir
		rm -rf $del_dir
		echo "File and Directories in " $dname
		ls	;;
		

	7)echo "Enter the file name to be searched : "
		read s_fname
		find . -name $s_fname;;
		

	8) pwd;;

	
		
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



            ''' OUTPUT

[student@localhost ~]$ chmod +x file1.sh
[student@localhost ~]$ ./file1.sh
All the files in the present directory:
Assgnment4.odt		 file1.sh			    Videos
banker			 get-pip.py			    vpp_19
banker.cpp		 Music				    vpp_19_1
Bankers Algorithm.odt	 new_dir			    vpp_19_1.c
bill_authentication.csv  OS LAB ASSIGNMENTS 1 TO 4.PDF.odt  vpp_19_2
bres.cpp		 Pictures			    vpp_19_2.c
Desktop			 prac.c				    vpp_19.c
Documents		 Public				    workspace
Downloads		 Templates
A new directory has been created:
mkdir: cannot create directory ‘new_dir’: File exists
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
1
aaa  bbb
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
2
Enter the new directory name :
DIR
File and Directories in  DIR
aaa  DIR  bbb
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
3
Enter the new file name with extension :
p.txt
File and Directories in  DIR
aaa  DIR  bbb
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
4
Enter the old file name to be renamed :
DIR
Enter the new file name to be renamed :
nikhil
File and Directories in  DIR
aaa  nikhil  bbb
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
5
Enter the file name to be deleted :
p.txt
File and Directories in  DIR
aaa  nikhil  bbb
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
6
Enter the directory to be deleted :
aaa
File and Directories in  DIR
nikhil  bbb
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
8
/home/student/new_dir
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
7
Enter the file name to be searched :
nikhil
./nikhil
Do u want to continue ?
y
1.List of files and directories
2.Create Directory
3.Create File
4.Rename file/directory
5.Delete file
6.Delete directory
7.Search a file
8.Check present directory
Enter your choice
1
nikhil  bbb
Do u want to continue ?
Y
'''



#                     FILE_HANDLING(DOUBLE)

i="y"

while [ $i = "y" ]
do

echo "1.List of files and directories"
echo "2.Enter a directory"
echo "3.Create a Directory"
echo "4.Create a File"
echo "5.Rename file/directory"
echo "6.Delete file"
echo "7.Delete directory"
echo "8.Search a file"
echo "9.Check present directory"

echo "Enter your choice"
read ch
case $ch in
    1)ls
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;
         		
    2)echo "Enter directory name"
		read dir
		cd $dir
		
		echo "File and Directories in " $dir
		ls	
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	3)echo "Enter the new directory name : "
		read dname
		mkdir $dname

		echo "File and Directories in " $dname
		ls	
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	4)echo "Enter the new file name with extension : "
		read fname
		gedita $fname

		echo "File and Directories in " $dname
		ls	
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	5)echo "Enter the old file name to be renamed : "
		read old_fname
		echo "Enter the new file name to be renamed : "
		read new_fname
		mv $old_fname $new_fname

		echo "File and Directories in " $dname
		ls	
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	6)echo "Enter the file name to be deleted : "
		read del_fname
		rm -f $del_fname
		echo "File and Directories in " $dname
		ls	
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	7)echo "Enter the directory to be deleted : "
		read del_dir
		rm -rf $del_dir
		echo "File and Directories in " $dname
		ls	
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	8)echo "Enter the file name to be searched : "
		read s_fname
		find . -name $s_fname
		
		
		echo "Do you want to go back into the previous directory?"
		read j
		if [ $j = "y" ]
		then cd ..
		fi;;

	9) pwd;;

	
		
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

            ''' OUTPUT

[student@localhost ~]$ chmod +x file2.sh
[student@localhost ~]$ ./file2.sh
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
1
Assgnment4.odt		 file1.sh			    Templates
banker			 file2.sh			    Videos
banker.cpp		 get-pip.py			    vpp_19
Bankers Algorithm.odt	 Music				    vpp_19_1
bill_authentication.csv  new_dir			    vpp_19_1.c
bres.cpp		 OS LAB ASSIGNMENTS 1 TO 4.PDF.odt  vpp_19_2
Desktop			 Pictures			    vpp_19_2.c
Documents		 prac.c				    vpp_19.c
Downloads		 Public				    workspace
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
3
Enter the new directory name :
nikhil
File and Directories in  nikhil
nikhil			 file1.sh			    Videos
Assgnment4.odt		 file2.sh			    vpp_19
banker			 get-pip.py			    vpp_19_1
banker.cpp		 Music				    vpp_19_1.c
Bankers Algorithm.odt	 new_dir			    vpp_19_2
bill_authentication.csv  OS LAB ASSIGNMENTS 1 TO 4.PDF.odt  vpp_19_2.c
bres.cpp		 Pictures			    vpp_19.c
Desktop			 prac.c				    workspace
Documents		 Public
Downloads		 Templates
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
2
Enter directory name
nikhil
File and Directories in  nikhil
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
3
Enter the new directory name :
anand_dir
File and Directories in  anand_dir
anand_dir
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
4
Enter the new file name with extension :
f0
./file2.sh: line 54: gedita: command not found
File and Directories in  anand_dir
anand_dir
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
5
Enter the old file name to be renamed :
nikhil
Enter the new file name to be renamed :
raj
mv: cannot stat ‘anand’: No such file or directory
File and Directories in  anand_dir
anand_dir
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
6
Enter the file name to be deleted :
f0
File and Directories in  anand_dir
anand_dir
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
7
Enter the directory to be deleted :
anand_dir
File and Directories in  anand_dir
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
8
Enter the file name to be searched :
nikhil
Do you want to go back into the previous directory?
0
Do u want to continue ?
y
1.List of files and directories
2.Enter a directory
3.Create a Directory
4.Create a File
5.Rename file/directory
6.Delete file
7.Delete directory
8.Search a file
9.Check present directory
Enter your choice
9
/home/student/nikhil
Do u want to continue ?
n
[student@localhost ~]$ '''


