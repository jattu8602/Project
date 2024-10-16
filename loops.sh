#!/bin/bash

# Loop from 1 to 20
for (( i=1; i<=20; i++ ))
do
    # If the number is divisible by 3, skip it
    if (( i % 3 == 0 )); then
        continue
    fi

    # If the number is 15, stop the loop
    if (( i == 15 )); then
        break
    fi

    # Print the current number
    echo $i
done
