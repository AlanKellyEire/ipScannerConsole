#!/usr/bin/env bash

echo "1) How would you display the first 4 characters of an environment variable called EMPLOYEE_ID? (2 marks)"
#variable EMPLOYEE_ID
EMPLOYEE_ID="123456789"
#Print first 3 chars of the varable EMPLOYEE_ID
echo ${EMPLOYEE_ID:0:4}
printf "\n"

echo "2) How would you list all files in /etc that end with a 'd' or an 'n' (2 marks)"
#using the list command and using the wild card * to find any files that end with d or n
#using the d flag not to do a recurive search in sub directories, you must add the option of .*char 
#as it will not search hidden files without this.
#ls -da /etc/*d && ls -da /etc/*n
ls -d /etc/*d && ls -d /etc/*n && ls -d /etc/.*n && ls -d /etc/.*d
printf "\n"

echo "3) How would you list all the processes for a particular user (use a switch for this, not grep) and write them
to a file called proclist? (2 marks)"
# ask for username
echo "Please enter a user you wish to list processes for?"
read username
#using the > switch to write out to a file called proclist
#-U flag select user by real user ID or name, -u flag means select user by effective id or name
ps -u $username > proclist
#ps -U $username u > fulllist
#ps -U $username -u $username u > fulllist
#echo "proclist"
#wc -l proclist
#echo "fulllist"
#wc -l fulllist
echo "printing proclist"
cat proclist
printf "\n"

sleep 5
echo "4) How would you copy the contents of a directory called data including any subdirectories in it to a new
directory called copy_of_data? Assume data is in the current directory. (2 marks)"
#using the -r flag to recursively copy all files/folder and sub files/folders from the directory data to copy_of_data
cp -r data copy_of_data/
printf "\n"

echo "5) How would you delete a directory called data in the current directory and all files and subdirectories it
contains? (2 marks)"
#using the -r flag to recursively delete all files/folder and sub files/folders from the directory copy_of_data
rm -r data
printf "\n"

echo "6) How would you change the permissions on all files in the current directory that end with '.sh' so that
they are executable by the user that owns them? (2 marks)"
#using chmod change the permissions on the owner so the files are excuable, u flag means owner and x flag means give excute permissions
#this will not give the user permission to excute unless the user also has read permissions as the file needs to be read for it to be excuted.
chmod u+x *.sh
#chmod u+rx *.sh
printf "\n"

echo "7) How would you change the permissions on all files in the current directory that end with '.sh' so that
they are not executable by any user except the user that owns them? (2 marks)"
#using chmod change the permissions on the owner so the files are excuable, u flag means owner and x flag means give excute permissions
#g flag means group and -x means remove excute permissions, o flag means group and -x means remove excute permissions
#this will not prevent the root user excuting as they can do what ever they want.
chmod u+x,g-x,o-x *.sh
printf "\n"

echo "8) How would you create a tar archive containing all the files in the current directory that start with 'book'? (2 marks)"
#-c flag means create f means read from, v equals verbose so it tells you what it is doing
#* means anything can come afterwards
tar -cvf name.tar book*
#to unarchive
#x means extract f means read from and -C means to this location
tar -xf name.tar -C tarOutput/
printf "\n"

echo "9) How would you display all lines in a file called fruits that contain 'banana', 'apple' or 'orange'? (2 marks)"
# -E means means read stings as a regex pattern
grep -E "apple|banana|orange" fruits
# without using -E flag
grep "apple\|banana\|orange" fruits
# for only lines that contain all those words
# piping one grep output to another
grep "apple" fruits | grep "orange" | grep "banana"
# finding it using regex and -E, only example as it does not have all possible positions of the words
grep -E "apple.*banana.*orange|banana.*apple.*orange|" fruits
printf "\n"

echo "10) How would you display the contents of a file called recipe but with all occurrences of 'meat', 'ham' or
'pork' replaced with 'veggie'? (2 marks)"
# using said and the s at the start of the phrase means substitute and g at the end means replace all. the -i flag means print out.
sed -s 's/meat/veggie/g; s/ham/veggie/g; s/pork/veggie/g;' recipe
printf "\n"
alan@ubuntu-ser