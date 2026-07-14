#!/usr/bin/bash

logsDir=$1
backupDir=$2
mtime=$3

if [[ -z $logsDir ]]; then
    echo "Enter the backupdir name"

    exit 1
fi

if [[ -z $backupDir ]]; then
    echo "Enter the backupdir name"

    exit 1
fi

if [[ -z $mtime ]]; then
    echo "Enter the mtime parameter"
    exit 1
fi

echo "Staring backup..."
echo "Moving the *.log files with more than ${mtime} days of modification to /${backupDir}"

echo "find ${logsDir} -name "*.log" -mtime +${mtime}"

mapfile -t logs < <(find ${logsDir} -name "*.log" -mtime +${mtime})

if [[ ${#logs[@]} -eq 0 ]]; then
    echo "No logs file to backup found"
    exit 1
fi

echo "${#logs[@]} found to compress..."

echo "Starting the compression: "

compressed=0
for log in ${logs[@]}; do
    echo "Processing the ${log}"

    if gzip "$log"; then
        mv "${log}.gz" "${backupDir}/"
        ((compressed++))
    else
        echo "Failed to compress ${log}"
    fi
done

report="$backupDir/backup_report.txt"

{
    echo "Compressed files $compressed"
} > $report