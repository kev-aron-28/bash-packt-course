# Grep command

grep stands for Global Regular Expression Print.

It’s a command-line tool in Unix/Linux used to search for text patterns inside files or streams.


It outputs the lines that match the pattern.
grep [OPTIONS] PATTERN [FILE...]


PATTERN: What you’re searching for (can be plain text or a regex).

FILE: One or more files to search in. If omitted, grep reads from stdin (standard input).

Exit Status & Scripting Behavior

0 → At least one match found

1 → No matches found

2 → Error occurred (e.g., file not found, invalid syntax)


1. Search for the word hello in a file:

grep "hello" myfile.txt


2. Search in multiple files:

grep "error" *.log


3. Case-insensitive search:

grep -i "error" myfile.txt


4. Show line numbers:

grep -n "TODO" code.c


1. -i → Ignore case
echo -e "Dog\ncat\nDOG\nmouse" | grep -i "dog"


2. -v → Invert match (show lines that do NOT match)
echo -e "apple\nbanana\norange" | grep -v "banana"

3. -r or -R → Recursive search in directories
grep -r "main" ./project

4. -n → Show line numbers
echo -e "first line\nsecond line\nthird line" | grep -n "second"
