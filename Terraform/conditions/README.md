# Linux Notes for DevOps

This document contains important Linux commands with explanations.
Useful for DevOps engineers, Cloud engineers and system administrators.

--------------------------------------------------

# 1. Basic Navigation Commands

pwd  
Shows current directory path

ls  
Lists files and directories

ls -l  
Shows detailed list (permissions, owner, size, date)

ls -a  
Shows hidden files

cd foldername  
Change directory

cd ..  
Move to parent directory

cd ~  
Go to home directory

clear  
Clear terminal screen

history  
Shows previously executed commands

--------------------------------------------------

# 2. File and Directory Management

mkdir foldername  
Create new folder

mkdir dir1 dir2 dir3  
Create multiple folders

touch file.txt  
Create empty file

cp file.txt file2.txt  
Copy file

cp -r folder1 folder2  
Copy directory

mv file.txt newfile.txt  
Rename file

mv file.txt folder/  
Move file

rm file.txt  
Delete file

rm -r foldername  
Delete directory

rmdir foldername  
Remove empty directory

--------------------------------------------------

# 3. Viewing File Content

cat file.txt  
Display file content

less file.txt  
View large file page by page

head file.txt  
Show first 10 lines

tail file.txt  
Show last 10 lines

tail -f logfile.log  
View live logs

--------------------------------------------------

# 4. File Permissions

ls -l  
Check permissions

chmod 777 file.txt  
Give full permissions to all users

chmod 755 script.sh  
Owner full permission, others read and execute

chmod +x script.sh  
Make script executable

Permission values

7 = read write execute  
6 = read write  
5 = read execute  
4 = read  
0 = no permission  

Example

chmod 644 file.txt

--------------------------------------------------

# 5. Users and Groups

whoami  
Shows current user

who  
Shows logged in users

id  
Shows user id and group id

sudo useradd username  
Create new user

sudo passwd username  
Set password

sudo userdel username  
Delete user

groups  
Shows user groups

--------------------------------------------------

# 6. Process Management

ps  
Shows running processes

ps -ef  
Shows detailed processes

top  
Shows live running processes

htop  
Advanced process viewer

kill PID  
Stop process

kill -9 PID  
Force stop process

--------------------------------------------------

# 7. Disk and Memory

df -h  
Check disk space

du -h  
Check folder size

free -m  
Check memory usage

lsblk  
Shows disk partitions

--------------------------------------------------

# 8. Networking Commands

ip a  
Shows IP address

ping google.com  
Check internet connection

curl google.com  
Fetch webpage data

wget url  
Download file

ss -tuln  
Check open ports

netstat -tuln  
Check listening ports

--------------------------------------------------

# 9. Search Commands

grep word file.txt  
Search word in file

grep -i word file.txt  
Ignore case sensitive search

grep -r word .  
Search word in all files

find . -name filename  
Find file

find . -type d -name foldername  
Find directory

--------------------------------------------------

# 10. Package Installation

Ubuntu / Debian

sudo apt update  
sudo apt install nginx  

RedHat / CentOS

sudo yum install nginx  

Check installed packages

rpm -qa

--------------------------------------------------

# 11. Archive and Compression

zip file.zip file.txt  
Create zip file

unzip file.zip  
Extract zip file

tar -cvf file.tar folder  
Create tar file

tar -xvf file.tar  
Extract tar file

tar -czvf file.tar.gz folder  
Create compressed file

--------------------------------------------------

# 12. System Information

uname -a  
Shows system information

uptime  
Shows system running time

date  
Shows current date

cal  
Shows calendar

hostname  
Shows system name

--------------------------------------------------

# 13. Important Linux Directories

/home  
User files

/etc  
Configuration files

/var  
Log files

/tmp  
Temporary files

/bin  
System commands

/opt  
Optional software

/usr  
User applications

--------------------------------------------------

# 14. Useful Commands for DevOps

df -h  
Check disk space

free -m  
Check memory

top  
Check CPU usage

tail -f /var/log/messages  
Check logs

ss -tuln  
Check open ports

--------------------------------------------------

# 15. Practice Tasks

mkdir devops
cd devops
mkdir linux terraform ansible

touch notes.txt
touch commands.txt

echo hello >> notes.txt

grep hello notes.txt

--------------------------------------------------

Author

Vinay Kumar

DevOps Linux Notes
