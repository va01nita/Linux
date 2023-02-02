#  Basic Linux Commands
#### Who:
    shows who logged on in detail

#### Whoami:
    shows username who logged on

#### sudo su username:
    switch user

#### exit:
    exits from user back

#### uname:
    print certain system information

#### uptime:
    shows time since system is switched on

#### date: 
    displays date with day and time & timezone

#### cd dir:
    to change directory

#### cd ..:
    to go previous or down by one level

#### cd -:
    to go to home level

#### cp src destn:
    for copy purpose


#### cat filename:
    to see contents of the specified file

#### cat <filename1> > filename2:
    copies/overrites contents of the specified file1 into file2

#### cat filename >> filename2:
    appends contents of the specified file1 into file2

#### ls: 
    to display files in present dir

#### ll:
    to display all the files with hidden also in present dir. Following info also displayed:
    -Filetype
    -user permissions
    -group permissions
    -owner/other permisions
    -no of hard links to file
    -file owner
    -file group
    -file size
    -date and time
    -file name

#### ll >filename:
    copies selected portion from terminal to specified filename

#### mkdir:
    to create new directory
## mkdir -p A/B/C/1:
    -p: no error if exists and creates parent with child directories
    makes directory structure as given
#### pwd:
    present working directory

#### rmdir dirname :
    removes empty directory completely (r-recursive) 

## rm filename:
    removes file/directory even if not empty
    -r: removes dir with child dir
    -rf: removes without taking permission before
    -i: removes by taking permission before
#### nano filename:
    opens/creates file with editor in terminal

### ls-ltr:
    -l: uses long listing format
    -t: sort by time, newest first
    -r: reverse order while sorting

### touch filename:
    creates empty file
### tac filename:
    writes each file to std output,last line first
#### tree:
     defines/desplays tree structure of the directory
#### sudo apt-get install:
    to install package/software/command/etc

## **Cluster management can be done if data is too big to handle; using these techiques
1. By compressing the data
2. Moving data to cloud based services like Azure/AWS
3. By quota management techniques

### tar cvf new_file_name fileTobeCompressed:
    To compress the specified file
### tar xvf fileTobeDecompresed:
    To extract contents of tar file
### tar xvf fileTobeDecompresed -C /pathWhereToExtractFile:
    To extract contents of tar file at specified location
### tar zcvf filename.tar.gz fileTobeCompresed:
    To compress contents of the file
### tar zxvf fileTobeDecompresed:
    To extract contents of tar.gz file
### zip file.zip file/pathTobecompresed:
    To compress contents of the file
### unzip filename.zip -d path:
    To extract contents of zipped file at path/location
### du -h filename:
    To check size of file

### Monitoring process
    -Process
    -Program
    -Threads
### Types of process
    1. Running/Runnable
    2. Uninterruptable
    3. Interruptable 
    4. Stopped(T)
    5. Parent process
    6. Child process
    7. Zombie(Z):when parent process is not available to take child process output; child process becomes zombie
    8. Demon process(background process)
### Monitoring Commands
#### ps:
    shows static processes of current shell only
    options: -a, -u, -aux, -ef
#### top:
    to show current running linux processes on kernel(constantly updating)
#### htop: 
    same as top
#### lsof:
    Shows all the open files
#### sudo adduser username:
    adds/creates new user
#### passwd:[passwd username]
    to change password [to change specified users password]
#### su username:
    to switch user
#### id username:
    to check user ID and its group
#### sudo userdel username:
    to delete user
#### killall -u username:
    to delete user with all its processes running
#### userdel -r username:
    to delete user with its home folder
#### id username:
    to get userid and username
#### sudo addgroup groupname:
    to add new group
#### cat /etc/group:
    to list/view groups
#### sudo adduser username --ingroup groupname:
    to add new user in specific group
#### groups username:
    to check users groups
#### sudo usermod -a -G groupname username:
    to add existing user to specific group
#### sudo gpasswd -d username groupname:
    to remove user from specified group
#### host google.com:
    to view ip address of site
#### nslookup google.com:
    to view server/address details
#### ping google.com:
    to check connection/device to device connectivity
#### route:
#### traceroute google.com:
    shows nearest hub and time to get response from hub
#### nmap -A -T4 google.com:
    lists whichever ports are open while conecting through gateway
#### sudo tcpdump:
    to check traffic on network
#### ssh Hostname/IP:
    secure shell connect to host 
#### nc locaalhost PORT_NO:
    service to service connection can be checked using netcat cmd
#### netstat:
    all networking and open listening ports info
    netstat -IP/HOST : shows all open ports

## File Permissions
### -character
#### chmod +rwx(optional) file/dir
    -to add permissions to file/directory
#### chmod -rwx(optional) file/dir
    -to remove permissions of file/directory
#### chmod u-rwx(optional) file/dir 
    -to remove permissions of user for specific file/directory
#### chmod g-rwx(optional) file/dir 
    -to remove permissions of group for specific file/directory
#### chmod o-rwx(optional) file/dir 
    -to remove permissions of other for specific file/directory
### -numerical
#### chmod 777 file/dir:
    -7: 4+2+1=r+w+x
    -0: no permission

#### ls | grep -pattern-to search-:
    used to search file of the specified pattern
#### grep -a pattern filename:
    finds given pattern into the file and prints all the line(-a:all)
    -i: to ignore the case
    -n: to display line numbers of pattern
    -h: to dispaly whole line
    -c: count of no of lines in which matching pattern occured
    -e "pattern": to search more than one patterns same time in single command
#### sudo find path[or ./] -name pattern/file/dir_to_find
    to find path of the given file/pattern if path is unknown
#### sudo find path[or ./] -empty:
    displays empty files
#### sudo find path[or ./] -size -10k/2M/3G:
    displays files less than 10kb size/2mb/3gb
#### sudo find path[or ./] -user username:
    displays files owned by specific user
#### sudo find path[or ./] -perm 744:
    displays files with permissions 744
#### sudo find path[./] -mtime -10:
    displays all files modified daywise
#### sudo find path[./] -cmin -10:
    displays all files modified last 10 min ago
#### stat filename:
    shows all info about file
#### diff file1 file2:
    shows diff between two files
#### sed -n '1p' filename:
    prints first line of the file
#### sed -n '3,5p' filename:
    prints 3rd to 5th lines
#### sed -n '$p' filename:
    prints last line of file
#### sed -n '/pattern_to_search/p' filename:
    searches pattern and prints line in which pattern occured
#### sed -n -e '2p' -e '5p' filename:
    prints 2nd and 5th line of file
#### sed -n -e '1p' -e '$p' filaname:
    prints 1st and last line of the file
#### sed -n -e '/pattern1/p' -e '/pattern2/p' filename:
    prints line in which patterns occured
#### sed -n '2,+2p' filename:
    prints 2nd line plus 2 lines from 2nd line
#### sed -n '1~2p' filename:
    prints every 2nd line from printed first line(ex altername)
#### sed '=' filename:
    assigns numbers to every line temporarily
#### sed 's/string_to_replace/new_string/g' filname:
    replaces string in file for temporary basis
#### sed -i 's/strin_to_replace/new_string' filename:
    replaces string in actual file
#### sed -n '/pattern/ w new_filename' filename:
    writes lines of occurred pattern to new file from existing
#### sed '/^$/d' filename:
    deletes empty line of file

### Difference between awk and sed?
    awk uses programming language such as loops (if/else, do while). we can read file using awk command even there is no read permission. rows and columns can be managed using awk.
    sed is less powerful,simple and limited while awk is more powerful, complex and versatile.

#### awk '{print $column_no}' filename:
    prints specified column
#### awk '{print $0}' filename:
    prints whole table
#### awk '{print $NF}' filename:
    prints last column
#### awk '{print $nf}' filename:
    prints whole file
#### awk '{print $NR}' filename:
    prints first row of file
#### awk '{print NR}' filename:
    prints no of records in column format
#### awk -F, '{print $column_no}' filename:
    prints column from quama saperated unstructured file.
#### awk '{if(condition){Statement} print $col_no}' filename:
    executes if condition using awk and prints information locally.
#### awk 'logic(ex: length($0)>20)' filename:
    executes logic defined using awk locally
#### awk 'NF==0 {print NR}' filename:
    prints empty row in file
#### awk 'BEGIN {for(i=0;i<=10;i++) i;}':
    prints range from 0 to 10
#### awk 'BEGIN {while(i<10){i++; print "Num is: " i;}}'
    prints num is: 1 to 10
### cut cmd used at character level searching
#### cut -d -f filename --output-delimiter="|":
    prints quama saperated file with | delimiter
#### cut -c1-5 filename:
    prints characters from 1 to 5 in a row for every column
#### cut -c1,5 filename:
    prints first and fifth character of every row and column

    Question may be asked
    why setfacl?
    Diff between setfacl and chmod/chown
    how to provide diff permissions to diff-diff users/groups
    -the answer is:
### ACL Command 
    used to set different permissions to different users
### getfacl file/dir:
    to view permissions of file/dir
### setfacl -m u:username:permission filename
    to modify permissions for specific user
    >u:to change permission for user
    >g:to change permission for group
    >x:to remove permissions
### Shell scripting
    starts with first line as #!/bin/bash
    and then start scripting
    -echo "stmt": to print statements
    -variable_name= "var" : to create variable
    ex. name="vanita"
        echo "my name is ${name}"
        this will print "my name is vanita"
    -read variable: takes input from user
    -sleep 10: waits for 10 sec and then proceed further    
### at command used to run any given cmd at the time specified.
#### at now +1 min:
    runs command entered in at editor after 1 min
#### atq: 
    lists jobs scheduled using at command
#### atrm job_no:
    deletes/removes scheduled job specified by job_no
#### crontab:
    creates a table or list of cmds to be executed by os at specified time