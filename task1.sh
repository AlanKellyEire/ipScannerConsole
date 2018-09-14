 Assessment 1 - Scripting for System Automation COMP9053
This assessment will test your knowledge of the command line tools, your ability to combine them to solve problems, your ability to write shell scripts and your ability to work from a high-level problem statement to a concrete solution via shell scripting.
If you have any questions about the assignment, or you’re stuck somewhere, please post to the relevant thread in Blackboard. Don't waste time being stuck when it might be because something isn't clear.
This assessment will be worth 40% of your final grade
Due before midnight Sunday October 14th 2018 (end of week 5)
Standard institute penalties apply for late submissions.
Up to 1 week late – 10% deduction from the overall mark received for the assignment.
1 to 2 weeks late - 20% deduction from the overall mark for received for the assignment.
This task describes the submission process for the answers for the rest of the tasks. It's a simple procedure so its easy marks if you follow it, otherwise marks will be deducted for failing to submit correctly.
Add your answers to Tasks 1 and 2 to simple text files called task1 and task2. Package these together with the scripts and design.txt from Tasks 3-5 into a compressed tar file called assessment1<YOUR-STUDENT- ID>.tgz. This file is what should be submitted.
Submissions should be made through Blackboard.
This task will test your knowledge of the command line tools and working from the shell. Note: all of these must be solved with a single command, there should be no piping involved.
Unless otherwise stated, where it says files both files and directories are meant.
Put one answer per line in a text file called task1, with the question number at the start of the line. E.g. 1) your answer.
1) How would you display the first 4 characters of an environment variable called EMPLOYEE_ID? (2 marks) 2) How would you list all files in /etc that end with a 'd' or an 'n' (2 marks)
3) How would you list all the processes for a particular user (use a switch for this, not grep) and write them
to a file called proclist? (2 marks)
4) How would you copy the contents of a directory called data including any subdirectories in it to a new
directory called copy_of_data? Assume data is in the current directory. (2 marks)
5) How would you delete a directory called data in the current directory and all files and subdirectories it
contains? (2 marks)
6) How would you change the permissions on all files in the current directory that end with '.sh' so that
they are executable by the user that owns them? (2 marks)
7) How would you change the permissions on all files in the current directory that end with '.sh' so that
they are not executable by any user except the user that owns them? (2 marks)
       Task 0 2 marks
         Task 1 20 marks
    
8) How would you create a tar archive containing all the files in the current directory that start with 'book'? (2 marks)
9) How would you display all lines in a file called fruits that contain 'banana', 'apple' or 'orange'? (2 marks) 10) How would you display the contents of a file called recipe but with all occurrences of 'meat', 'ham' or
'pork' replaced with 'veggie'? (2 marks)
This task will test your ability to combine command line tools to solve problems. Each of these requires one or more commands connected via pipes.
Unless otherwise stated, where it says files both files and directories are meant.
Put one answer per line in a text file called task2, with the question number at the start of the line. E.g. 1) your answer.
1) How would you count the number of processes running as the user root? (2 marks)
2) How would you display all environment variables that contain the user's username? This command
should be usable by any user. (2 marks)
3) How would you display all the lines with commands contained in square braces that are listed in the
output of ps -ef? (2 marks)
4) How would you display all words in /usr/share/dict/words that contain all the vowels [a,i,o,u,e]? 5) How
would you display the usernames and their associated home directories from /etc/passwd? (2 marks)
6) How would you list all files in /etc that all users (owner, group and other) can read, using grep? (2 marks) 7) How would you print the modification date of the oldest file in /etc? (2 marks)
8) How would you count the number of different years in the modification dates of all files in /etc? Use ls
-l to get the list of files and modification dates and don't worry about recently modified files which
don't have an associated year displayed. (2 marks)
9) How would you run the fortune command so that all the vowels in its output are displayed in uppercase?
(2 marks)
10) How would you count the number of files in /usr/share/games/fortunes/ that contain the string 'mark'. Note that the the file contents must contain the string, not the file's name ? (2 marks)
This task requires you to write a simple shell script called vanity.sh that is used to search files for mentions of the user. Here are the requirements:
1) It must get the user's name using the whoami command and store it in a variable called username 2) It must take a single parameter which is the name of the file to be searched
3) It must use grep to search the specified file for occurrences of the user's name and print them
Note: for this task there's no need to worry about missing parameters or error checking. The script, apart from shebang and any comments you choose to add, should consist of two lines.
This task will require you to write a script called encrypt.sh that's used to encrypt files. Here are the requirements for the script:
         Task 2 20 marks
         Task 3 10 marks
          Task 4 20 marks
  
1) It must use openssl to encrypt files (see box below for all you need to know about openssl for this task) (2 marks)
2) It must take the name of a file to encrypt as a parameter (2 marks)
3) When it encrypts a file it must put the encrypted version in a file with the same name but ".enc"
appended (2 marks)
4) It must be safe to run on a system with other users. That is, it must not pass any passwords as command
line arguments (2 marks)
5) It must read the password to use from an environment variable called ENCRYPTION_KEY (2 marks)
6) If that environment variable is not set, it should prompt the user to enter a password and use that instead
(2 marks)
7) It should display an error if no parameter is provided and exit with exit code 2 (2 marks) 8) It should display a message if the user calls the script with a --help switch (2 marks)
9) It should work with files with spaces in the name (2 marks)
10) Include a header comment. Comment elsewhere as appropriate (2 marks)
     Overview of openssl
openssl is a security tool that can be used to encrypt files. To encrypt a file called words to produce a file called words.enc, using an encryption key set in the environment variables called ENCRYPTION_KEY (e.g. with export ENCRYPTION_KEY=1234) use: openssl enc -e -aes256 -in words -out words.enc -pass env:ENCRYPTION_KEY It's not needed for the assignment, but to decrypt you would use:
openssl enc -d -aes256 -in words.enc -out words.enc.dec -pass env:ENCRYPTION_KEY And you should find words is identical to words.enc.dec. You can check this with:
         Task 5 28 marks
  This task requires you to write a more complex script called backup.sh and also to flesh out the requirements a little yourself from a rough description. This task purposely doesn't have as much explicit detail as the previous task. It's up to you to look at the requirements and decide exactly how to implement it.
1) This script must archive files specified as parameters on the command line into a single file. Note: it should be possible to specify any number of files to be archived on the command line into a single file (5 marks)
2) The script should check for missing parameters and deal with them appropriately. It should also deal with the --help switch as you'd expect. Look at the output of other commands to get an idea of formatting (5 marks)
3) It should accept an optional command line switch for producing a compressed archive (5 marks) 4) It should have an optional command line switch for encrypting the archive. It should encrypt the archive after it's been created, whether compressed or not. It should encrypt it using the script you wrote in Task 4. Assume the scripts are in the same directory (if you didn't get Task 4 working, just directly encrypt it with openssl as described in the box above). It should prompt the user for the password to use for encryption. (6 marks)
5) Include a header comment. Comment elsewhere as appropriate (2 marks)
6) Create a text file called design.txt. Add a sentence or two to this file for each of the previous
requirements (1-5) listed in this task describing how you went from requirement to your implementation. This might be simple or you might have to question or assume something. This isn't meant to be a tricky question, I just want to see your thought process here. (5 marks)
