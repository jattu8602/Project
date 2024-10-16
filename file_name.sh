#!/bin/bash

# Prompt the user to enter their name
echo "Please enter your name:"
read name

# Save the name to a text file
echo $name > name.txt

# Display confirmation message
echo "Your name '$name' has been saved in name.txt."
