#!/bin/bash

# Display current username
echo "Current Username: $(whoami)"

# Display home directory
echo "Home Directory: $HOME"

# Display current shell
echo "Current Shell: $SHELL"

# Display current working directory
echo "Current Working Directory: $(pwd)"

# Display current date and time
echo "Current Date and Time: $(date)"

# Display number of files in the current directory
echo "Number of Files in Current Directory: $(ls -1 | wc -l)"
