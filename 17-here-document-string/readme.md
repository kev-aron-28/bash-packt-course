Heredoc is a multilines of strings that will be redirected to a
command 

commadn << DELIMITER
LINEL
LINE
LINE
DELIMITER

cat << EOF
FIRST LINE
SECOND LINE
EOF


# Here string

cut -d ' ' -f1 <<< "Hello i am shell"
