#!/bin/bash

# Check if exactly 3 arguments are passed
if [ "$#" -ne 3 ]; then
  echo "Usage: ./calculator.sh <number1> <operator> <number2>"
  exit 1
fi

# Get the input arguments
num1=$1
operator=$2
num2=$3

# Perform the calculation based on the operator
case $operator in
  '+')
    result=$(echo "$num1 + $num2" | bc)
    ;;
  '-')
    result=$(echo "$num1 - $num2" | bc)
    ;;
  '*')
    result=$(echo "$num1 * $num2" | bc)
    ;;
  '/')
    if [ "$num2" == "0" ]; then
      echo "Error: Division by zero is not allowed."
      exit 1
    else
      result=$(echo "scale=2; $num1 / $num2" | bc)
    fi
    ;;
  *)
    echo "Error: Unrecognized operator. Use +, -, *, or /."
    exit 1
    ;;
esac

# Output the result
echo "The result is: $result"
