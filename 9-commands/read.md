# Read command

You can think of it like a way to pause a script and get user input, or to parse data line by line from files or pipes.

Basic Syntax
read [options] [var1 var2 ...]

Reads a line from stdin.
Splits the line into words according to $IFS (Internal Field Separator — usually spaces, tabs, and newlines).
Assigns the first word to var1, the second to var2, etc.
If there are fewer variables than words, the last variable gets the rest of the line.
If there are more variables than words, the remaining variables are set to empty.

-p "prompt"	Displays a prompt before reading input.
-a array	Stores words into elements of an array.
-e	Enables readline (history and editing like with arrow keys).
-n N	Reads exactly N characters, not a full line.
-N N	Reads up to N characters, waiting for all N or EOF.
-r	Raw mode — disables backslash escapes.
-s	Silent — input isn’t shown (useful for passwords).
-t N	Timeout — waits N seconds, then exits if no input.
-u fd	Reads from file descriptor fd instead of stdin.


# Read from files

while read -r line; do
  echo "Line: $line"
done < file.txt

while IFS=, read -r name age city; do
  echo "$name is $age and lives in $city"
done < data.csv

y
