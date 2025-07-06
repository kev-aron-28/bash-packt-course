#!/usr/bin/bash

a=3
b=3
c=r
d=bash
e=$(hostname)
f=`hostname`

echo ${e}
echo $f

cat << EOF
${a}
EOF

a=5
unset a

echo $a

