# Grep command

grep stands for Global Regular Expression Print.

It’s a command-line tool in Unix/Linux used to search for text patterns inside files or streams.


It outputs the lines that match the pattern.
grep [OPTIONS] PATTERN [FILE...]


PATTERN: What you’re searching for (can be plain text or a regex).

FILE: One or more files to search in. If omitted, grep reads from stdin (standard input).


1. Search for the word hello in a file:

grep "hello" myfile.txt


2. Search in multiple files:

grep "error" *.log


3. Case-insensitive search:

grep -i "error" myfile.txt


4. Show line numbers:

grep -n "TODO" code.c
