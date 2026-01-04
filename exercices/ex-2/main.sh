#!/usr/bin/bash
set -euo pipefail

FIFO="my_fifo"
MAX_PROCS=4
pids=()

# Trap limpio
trap 'echo "Proceso cancelado limpiamente";
      kill "${pids[@]}" "$reader_pid" 2>/dev/null || true;
      rm -f "$FIFO";
      exit 130' INT TERM

# Crear FIFO
[[ -p "$FIFO" ]] || mkfifo "$FIFO"

####################################
# LECTOR DEL FIFO (PRIMERO)
####################################
total_sum=0
total_max=0
total_files=0

{
    echo -e "Archivo\tSuma\tPromedio\tMax"

    while read -r line; do
        IFS='|' read -r file sum avg max <<< "$line"

        echo -e "$(basename "$file")\t$sum\t$avg\t$max"

        (( total_sum += sum ))
        (( total_files++ ))
        (( max > total_max )) && total_max=$max
    done < "$FIFO"
} &
reader_pid=$!

####################################
# FUNCIÓN WORKER
####################################
process_file() {
    local file=$1
    local sum=0
    local count=0
    local max=0

    while read -r num; do
        (( sum += num ))
        (( count++ ))
        (( num > max )) && max=$num
    done < "$file"

    local avg

    echo "$file|$sum|$avg|$max" > "$FIFO"
}

####################################
# LANZAR PROCESOS EN PARALELO
####################################
for file in data/*.txt; do
    process_file "$file" &
    pids+=($!)

    # Limitar concurrencia
    while [[ ${#pids[@]} -ge $MAX_PROCS ]]; do
        wait "${pids[0]}"
        pids=("${pids[@]:1}")
    done
done

####################################
# ESPERAR A TODOS LOS WORKERS
####################################
wait

####################################
# CIERRE LIMPIO
####################################
kill "$reader_pid" 2>/dev/null || true

total_avg=$(awk "BEGIN {printf \"%.2f\", $total_sum/$total_files}")
echo -e "TOTAL\t$total_sum\t$total_avg\t$total_max"

rm -f "$FIFO"
