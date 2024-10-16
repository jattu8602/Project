#!/bin/bash

# Define the tasks as functions
task1() {
    echo "Executing Task 1: Displaying current date and time"
    date
}

task2() {
    echo "Executing Task 2: Listing files in the current directory"
    ls
}

task3() {
    echo "Executing Task 3: Displaying disk usage"
    df -h
}

# Menu loop
while true; do
    echo "-------------------------"
    echo "  Menu:"
    echo "1. Display Date and Time"
    echo "2. List Files"
    echo "3. Display Disk Usage"
    echo "4. Exit"
    echo "-------------------------"

    # Prompt the user to choose an option
    read -p "Enter your choice [1-4]: " choice

    # Handle the user choice using a case statement
    case $choice in
        1)
            task1
            ;;
        2)
            task2
            ;;
        3)
            task3
            ;;
        4)
            echo "Exiting the script. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please choose a valid number from the menu."
            ;;
    esac

    echo "-------------------------"
    echo "Returning to menu..."
    echo
done
