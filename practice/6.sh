#!/usr/bin/bash


echo "Enter dir to monitor: "
read DIR

if [[ ! -d $DIR ]] ; then
  echo "Dir does not exists"
  exit 1
fi

report="report.txt"

echo "Generating report for ${DIR} ..."

echo "FIles by extension: " >> "$report"

for ext in $(find . -type f -name "*.*" | awk -F. '{if (NF > 1) print $NF}' | sort | uniq) ; do
  count=$(find "${DIR}" -type f -name "*.${ext}" | wc -l)
  echo "$ext: $count" >> "$report"
done

largest=$(find . -type f -exec du -b {} + | cut -f1 | sort -n | tail -1)
smallest=$(find . -type f -exec du -b {} + | cut -f1 | sort -n | head -1)

echo "Largest file: $largest" >> "$report"
echo "Smallest file: $smallest" >> "$report"

