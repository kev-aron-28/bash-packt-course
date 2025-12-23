#!/usr/bin/env bash

trap 'echo "Proceso cancelado limpiamente"; exit 130' INT

mapfile -t logFiles < <(find logs -type f -name "*.log")

[[ ${#logFiles[@]} -eq 0 ]] && exit 0

declare -A errors_by_date

for file in "${logFiles[@]}"; do
    [[ ! -s "$file" ]] && continue

    while read -r date; do
        (( errors_by_date["$date"]++ ))
    done < <(awk '$3 == "ERROR" { print $1 }' "$file")
done

for date in "${!errors_by_date[@]}"; do
    echo "$date | ${errors_by_date[$date]} errores"
done | sort