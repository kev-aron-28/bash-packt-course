🔹 What paste Does

Combines lines of files side by side (horizontally), separated by a delimiter (default = tab).

It’s the opposite of cat -n or nl (which operate vertically).

🔹 Basic Syntax
paste [OPTION]... [FILE]...


If no file is given, or if - is used, paste reads from stdin.

🔹 Common Usages
1. Combine two files line by line
paste file1.txt file2.txt


file1.txt

a
b
c


file2.txt

1
2
3


Output

a    1
b    2
c    3


(Default separator is a tab)

2. Change the delimiter
paste -d "," file1.txt file2.txt


Output:

a,1
b,2
c,3


You can use any character:

paste -d ":" file1.txt file2.txt

3. Multiple delimiters

If you pass multiple characters to -d, paste cycles through them:

paste -d ",;" file1.txt file2.txt file3.txt


Might produce:

a,1;b
c,2;d

4. Read from stdin
echo -e "x\ny\nz" | paste - - -


Output:

x    y    z


👉 Very useful for grouping every N lines together.

5. Serial mode (-s)

Normally, paste combines files in parallel (line 1 of each file, then line 2, etc).
With -s, it pastes serially: it puts all lines of one file on the same line.

paste -s file1.txt


If file1.txt is:

a
b
c


Output:

a    b    c

6. Combine multiple files horizontally
paste file1.txt file2.txt file3.txt


Each line from the three files will be combined side by side.

7. Handle unequal file lengths

If files have different numbers of lines:

Missing values are replaced with empty strings.
Example:

paste file1.txt file2.txt


If file1.txt has 2 lines and file2.txt has 3 lines → the 3rd line from file1.txt will be blank.

🔹 Practical Tricks
Group every N lines
paste - - -


Groups 3 lines at a time (separated by tabs).

For 4 lines:

paste - - - -

Change group separator
paste -d "," - - -


Groups 3 lines with commas instead of tabs.

Convert rows → columns (transpose)

Sometimes used like this:

paste -s -d '\t' file.txt


Puts the file’s content in a single line separated by tabs.

🔹 Key Options Recap

-d LIST → delimiters (default is tab).

-s → serial mode (one file at a time).

- → read from stdin.

-- → end of options (useful if filenames start with -).

✅ So in your case, the magical command:

paste - - -


groups every 3 lines with tabs.
If you want to not lose leftover lines (say the file has 14 rows), paste already prints them, just with blanks where missing.
