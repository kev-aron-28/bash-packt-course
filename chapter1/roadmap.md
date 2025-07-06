# Fundamentals

Bash = Bourne Again SHell
It's a command-line interpreter used to interact with Unix/Linux systems.
Bash is the most common shell in Linux distributions and macOS.


[All commands in bash]: https://ss64.com/bash/
[More commands]: 


# Redirecting and piping

- > Redirect output(overwrite)
- >> Redirect output(append to file)


history   # shows command line history
!!        # repeats the last command
!<n>      # refers to command line 'n'
!<string> # refers to command starting with 'string'


env                 # displays all environment variables

echo $SHELL         # displays the shell you're using
echo $BASH_VERSION  # displays bash version


ln -s <filename> <link>       # creates symbolic link to file

# Basic steps to write and execute bash shell

1. Choose the shell typeand find the location of the shell: which shell
/usr/bin/bash

2. Open the file with editor and save the file with the .sh extension

3. Write the * Shebang * line (#!/usr/bin/bash) as a very first line in script

4. Place the commands in order

5. Provide execution permissions for the script usin chmod u+x name

You can run it with ./ and using the full path of the executable

If you run it with bash you dont need permisons and shebang
