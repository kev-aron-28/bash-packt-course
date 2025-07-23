Test command is used to validate/judge conditions

What is a condition?
  - Example: -e file

test condition or [condition] or [[condition]]

test -e file && echo "FIle Exists" || echo "Does not exists"


File comparision
test -f file, validate file or path is a file or not
test -d file, validate file or path is a directory
test -e file, file exists or not
test -s file validate file size is greater than zero or not
test -r file, having read permissions for the current user
test -w file, have write permission
test -x file have execution permissions

String
test -z string, is null or not
-n, is not null or not
==, compare
!= not equal

Integer:
test num -eq num
-ne, not equal
-lt less than
-le less than or equal
-gt greater than
-ge greater than or equal

# Exit command
exit
