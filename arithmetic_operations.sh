#!/bin/bash

# Prompt the user to enter two numbers
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Perform addition
sum=$((num1 + num2))

# Perform subtraction
difference=$((num1 - num2))

# Perform multiplication
product=$((num1 * num2))

# Perform division (checking for division by zero)
if [ $num2 -ne 0 ]; then
  division=$(echo "scale=2; $num1 / $num2" | bc)
else
  division="undefined (division by zero)"
fi

# Display the results
echo "Addition of $num1 and $num2: $sum"
echo "Subtraction of $num1 and $num2: $difference"
echo "Multiplication of $num1 and $num2: $product"
echo "Division of $num1 and $num2: $division"
