#!/usr/bin/bash

pendingFolder=pending/*.job
processingFolder=/processing
failedFolder=/failed
doneFolder=/done

run_cmd() {
    local cmd=$1
    local time=$2

    local start
    local end
    local pid
    local elapsed

    start=$(date +%s)



    bash -c "${cmd}" &
    pid=$!

    echo "PID FOR CMD ${cmd} is: ${pid}"

    while kill -0 "${pid}" 2>/dev/null; do
        sleep 1

        end=$(date +%s)
        elapsed=$(( end - start ))

        if [[ elapsed -ge timeout ]]; then
            echo "TIMEOUT REACHED KILLING PROCESS"
            kill "${pid}" 2>/dev/null
            wait "${pid}" 2>/dev/null

            return 124
        fi
    done


    wait "${pid}"

    return $?
}

run_cmd "echo 'Hi'" 10

# for job in $pendingFolder; do
    
#     command=""
#     retries=0

#     while IFS= read -r line || [[ -n "$line" ]]; do
#         case "$line" in
#             COMMAND=*)
#                 command=${line#COMMAND=}
#             ;;
#             RETRIES=*)
#                 retries=${line#RETRIES=}
#             ;;
#         esac
#     done < "${job}"

#     if [[ -z "$command" || ! "$retries" =~ ^[0-9]+$ ]]; then
#         echo "FILE ${job} NOT CORRECT FORMAT" >$2
#         continue
#     fi

#     echo "JOB: ${job}"

#     echo "COMMAND = ${command}"

#     echo "RETRIES = ${retries}"

# done

