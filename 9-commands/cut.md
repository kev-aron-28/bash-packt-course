Cut command

cut extracts sections of text from each line of input. You can slice by:

bytes (-b)

characters (-c)

fields separated by a delimiter (-f -d)

It’s lightweight, fast, and part of the GNU coreutils.

cut [OPTIONS] [FILE...]


Main options:

-b LIST → select bytes

-c LIST → select characters

-f LIST -d DELIM → select fields separated by DELIM (default: tab)

-s → suppress lines without delimiter (with -f)

--complement → invert the selection (everything except what you asked)

--output-delimiter=STRING → set a custom output delimiter

LIST can be:

N → column/byte/char N

N-M → from N to M

N- → from N to the end

-M → from start to M

Combine with commas: 1,3-5,8-


