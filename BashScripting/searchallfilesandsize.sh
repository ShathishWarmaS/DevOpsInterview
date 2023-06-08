#!/bin/bash

# Function to search for files based on pattern and size
search_files() {
    read -p "Enter the pattern to search: " pattern
    read -p "Enter the minimum file size (in bytes): " min_size

    echo "Searching for files matching pattern '$pattern' and size > $min_size bytes..."
    echo "----------------------------------------------"
    find . -type f -name "$pattern" -size +"$min_size"c -exec du -h {} \;
    echo "----------------------------------------------"
}

# Main menu
while true; do
    echo "1. Search for files based on pattern and size"
    echo "2. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            search_files
            ;;
        2)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
