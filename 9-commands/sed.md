# Sed command

sed stands for Stream EDitor.
It reads text line by line (a stream), applies editing commands, and writes the result to standard output.

You can use it to:

- Replace text (s/pattern/replacement/)
- Delete or print lines
- Insert or append text
- Work with regular expressions
- Edit files in-place

Basic Syntax
sed [options] 'command' [file...]

or with multiple commands:
sed [options] -e 'command1' -e 'command2' [file...]



# The s Command (Substitute)

The most common and powerful command.

s/pattern/replacement/[flags]\

Ex. sed 's/cat/dog/' file.txt

# Flags for s///
Flag	Meaning

g	Replace all occurrences in the line.
i	Case-insensitive match.
p	Print lines where substitution happened (used with -n).
number	Replace only that occurrence in the line.
w file	Write substituted lines to a file.

Examples
sed 's/foo/bar/g' file.txt         # replace all "foo"
sed 's/foo/bar/2' file.txt         # replace 2nd "foo"
sed 's/foo/bar/gi' file.txt        # replace all, case-insensitive
sed -n 's/foo/bar/p' file.txt      # print only changed lines
sed 's/foo/bar/w changed.txt' file.txt


# Using the & as the matched string
Sometimes you want to search for a pattern and add some characters, like parenthesis, around or near the pattern you found. 
It is easy to do this if you are looking for a particular string:

sed 's/abc/(abc)/' <old >new

% echo "123 abc" | sed 's/[0-9]*/& &/'
123 123 abc


| Flag / Modifier | Type   | Description                           | Example                            |              |
| --------------- | ------ | ------------------------------------- | ---------------------------------- | ------------ |
| `-e`            | option | Execute sed command (can be repeated) | `sed -e 's/a/b/' -e 's/c/d/' file` |              |
| `-f`            | option | Read sed commands from file           | `sed -f script.sed file`           |              |
| `-i`            | option | Edit file in place                    | `sed -i 's/foo/bar/' file`         |              |
| `-i.bak`        | option | In-place edit with backup             | `sed -i.bak 's/foo/bar/' file`     |              |
| `-n`            | option | Suppress automatic printing           | `sed -n '/err/p' file`             |              |
| `-E`            | option | Extended regex (BSD/macOS)            | `sed -E 's/(a                      | b)/c/' file` |
| `-r`            | option | Extended regex (GNU)                  | `sed -r 's/(a                      | b)/c/' file` |
| `--posix`       | option | Force POSIX behavior                  | `sed --posix 's/a/b/' file`        |              |
| `--debug`       | option | Debug execution (GNU)                 | `sed --debug 's/a/b/' file`        |              |





