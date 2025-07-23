awk is a powerful text-processing tool used for pattern scanning and processing. It's great for handling column-based text, such as CSV files, logs, or command outputs.

awk 'pattern { action }' filename

pattern – A condition to match (optional).

action – What to do when the pattern matches.

filename – The input file (or pipe from another command).

If pattern is omitted, it matches every line.
By default, it's any whitespace (space or tab), so awk sees space-separated columns.

Built-in Variables
Variable	Meaning
$0	Entire current line
$1	First field/column
$2	Second field, and so on…
NR	Line number
NF	Number of fields in current line
FS	Field separator (default is space or tab)

Flag	Purpose
-F	Set custom field separator
-v	Pass shell variable to awk
'	Enclose script in single quotes

Examples

echo "a b c d" | awk '{ for (i = 1; i <= NF; i++) print $i }'


awk 'NR > 1 { print $0 }' file.txt

awk '/error/ { count++ } END { print count }' log.txt

ps aux | awk '{ print $4, $11 }' | sort -nr | head

awk '$3 > 100' archivo.txt

ps aux | awk '$1 ~ /^[a-z]+$/'


