🔹 Syntax
sort [OPTIONS] [FILE...]


If no file is given, it reads from stdin.

🔹 Common Uses of sort
1. Basic sort
sort file.txt


➡️ Sorts lines in alphabetical order (A → Z).

2. Reverse order
sort -r file.txt


➡️ Sorts in descending order.

3. Numeric sort
sort -n numbers.txt


➡️ Sorts by numeric value (not as text).
Example:

2
10
1


Normal sort: 1 10 2

With -n: 1 2 10

4. Human-readable numeric sort
sort -h sizes.txt


➡️ Handles suffixes like K, M, G (file sizes).
Example: 2K 10K 1M → correctly sorted.

5. Sort by key/column
sort -k 2 file.txt


➡️ Sort by the 2nd column. Columns are space/tab-separated by default.

Example (file.txt):

john 25
anna 19
mark 30


Command:

sort -k 2 -n file.txt


➡️ Sorted by age numerically.

6. Custom delimiter
sort -t, -k 2 file.csv


➡️ Use comma , as delimiter and sort by 2nd field.

7. Unique lines
sort -u file.txt


➡️ Removes duplicates (only works properly on sorted input).
Equivalent to:

sort file.txt | uniq

8. Check if file is sorted
sort -c file.txt


➡️ Reports the first line that is out of order.

9. Random sort
sort -R file.txt


➡️ Shuffles lines randomly.
(If not available, use shuf.)

10. Ignore case
sort -f file.txt


➡️ Case-insensitive sort (a == A).

11. Stable sort
sort -s -k 1 file.txt


➡️ Keeps original order when keys are equal (important for multi-key sorts).

12. Multiple keys
sort -k 2,2 -k 1,1 file.txt


➡️ Sort by column 2 first, then column 1 if ties.

13. Sort by month name
sort -M file.txt


➡️ Sort lines containing month names (Jan, Feb, …).

14. Output to file
sort file.txt -o sorted.txt


➡️ Sort in place (write result to a file).

🔹 Summary of useful options

-n → numeric

-h → human-readable sizes

-r → reverse

-u → unique

-k → key/column

-t → delimiter

-f → ignore case

-M → month names

-c → check sorted order

-s → stable sort

-o file → write output to file
