What uniq does

It removes adjacent duplicate lines from input.

Works best on sorted data (usually you’ll pipe sort before uniq).

Reads from stdin or files, outputs to stdout.

🔹 Syntax
uniq [OPTIONS] [INPUT [OUTPUT]]

🔹 Common Uses of uniq
1. Remove duplicates
uniq file.txt


➡️ Removes consecutive duplicate lines.
⚠️ If the file isn’t sorted, only adjacent duplicates are removed.
Example:

apple
apple
banana
apple


Output:

apple
banana
apple   # last "apple" stays since it’s not adjacent

2. Count occurrences
uniq -c file.txt


➡️ Shows how many times each line appears (must be sorted first).
Example:

apple
apple
banana


Output:

      2 apple
      1 banana

3. Show duplicates only
uniq -d file.txt


➡️ Prints only lines that appear more than once.

4. Show unique lines only
uniq -u file.txt


➡️ Prints lines that appear only once.

5. Ignore case
uniq -i file.txt


➡️ Treats Apple and apple as the same.

6. Skip characters before comparison
uniq -s 2 file.txt


➡️ Skip the first 2 characters when checking duplicates.

7. Check only a number of characters
uniq -w 5 file.txt


➡️ Only compare the first 5 characters.

8. Specify input & output files
uniq input.txt output.txt


➡️ Reads from input.txt, writes deduplicated output to output.txt.

🔹 Typical combo: sort | uniq

Since uniq only removes adjacent duplicates, the usual pattern is:

sort file.txt | uniq


Or count sorted items:

sort file.txt | uniq -c

🔹 Real-world examples

List unique IP addresses from logs:

awk '{print $1}' access.log | sort | uniq


Find top 10 most common words:

tr -s ' ' '\n' < file.txt | sort | uniq -c | sort -nr | head -10


Find duplicate lines in a file:

sort file.txt | uniq -d
