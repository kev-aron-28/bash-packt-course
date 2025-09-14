#!/usr/bin/bash
ROWS=63
COLS=100

declare -A grid

# Initialize grid with underscores
for ((r=0; r<ROWS; r++)); do
    for ((c=0; c<COLS; c++)); do
        grid[$r,$c]='_'
    done
done

show_grid() {
    for ((r=0; r<ROWS; r++)); do
        for ((c=0; c<COLS; c++)); do
            echo -n "${grid[$r,$c]}"
        done
        echo
    done
}

draw() {
    local row=$1       # starting row (bottom of trunk)
    local col=$2       # center column
    local len=$3       # current branch length
    local iter=$4      # iterations left

    if [[ $iter -le 0 || $len -le 0 ]]; then
        return
    fi

    # Draw trunk
    local top=$row
    for ((i=0; i<len; i++)); do
        grid[$top,$col]='1'
        top=$((top-1))
    done

    # Draw left branch
    local leftRow=$top
    local leftCol=$col
    for ((i=0; i<len; i++)); do
        grid[$leftRow,$leftCol]='1'
        leftRow=$((leftRow-1))
        leftCol=$((leftCol-1))
    done

    # Draw right branch
    local rightRow=$top
    local rightCol=$col
    for ((i=0; i<len; i++)); do
        grid[$rightRow,$rightCol]='1'
        rightRow=$((rightRow-1))
        rightCol=$((rightCol+1))
    done

    # Recurse for next iterations
    draw $leftRow $leftCol $((len/2)) $((iter-1))
    draw $rightRow $rightCol $((len/2)) $((iter-1))
}

# Example: draw fractal tree with 1 iteration (the big Y)
draw $((ROWS-1)) $((COLS/2)) 16 1
show_grid
