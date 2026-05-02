Syntax
tr [OPTION] SET1 [SET2]


SET1 → characters to replace/match

SET2 → replacement characters (only when doing translation)

By default, it reads from stdin and writes to stdout.

Common Uses of tr
1. Convert case

Lowercase → Uppercase:

echo "hello world" | tr 'a-z' 'A-Z'


Uppercase → Lowercase:

echo "HELLO" | tr 'A-Z' 'a-z'

2. Delete characters (-d)

Remove all digits:

echo "abc123def456" | tr -d '0-9'
# output: abcdef

3. Squeeze repeats (-s)

Reduce multiple spaces to a single space:

echo "hello    world" | tr -s ' '
# output: hello world

4. Complement (-c)

Select everything except a set.
Example: keep only digits, delete everything else:

echo "abc123xyz" | tr -cd '0-9'
# output: 123

5. Replace characters

Replace colons with dashes:

echo "10:20:30" | tr ':' '-'
# output: 10-20-30

6. Remove newlines

Turn multi-line into single-line:

cat file.txt | tr -d '\n'

Useful Ranges & Classes

a-z → lowercase letters

A-Z → uppercase letters

0-9 → digits

[:space:] → whitespace

[:alpha:] → letters

[:digit:] → numbers
