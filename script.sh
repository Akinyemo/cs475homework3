#!/bin/bash
# number of threads:
for t in 1 2 4 8
do
    echo NUMT = $t
    # number of subdivisions:
    for s in 5 10 100 150 1000 1500 5000 5500
    do
        echo NUMS = $s
        g++   proj.cpp -o prog -lm -fopenmp
        ./prog $t $s
    done
done
