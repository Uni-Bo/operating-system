#!/bin/bash

while true; do
    echo "Menu:"
    echo "1. Show permissions of a file or directory"
    echo "2. Show the number of files and directories under the current directory separately"
    echo "3. Show the last modification time of a file in the current directory"
    echo "4. Exit"

    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            ls -l|grep ^"-";;
        2)
            echo "Number of files: $(find . -maxdepth 1 -type f | wc -l)"
            echo "Number of directories: $(find . -maxdepth 1 -type d | wc -l)" ;;
        3)
            read -p "Enter the file name: " filename
            if [ -e "$filename" ]; then
                echo "Last modification time of $filename: $(stat -c %y "$filename")"
            else
                echo "File not found."
            fi ;;
        4)
            echo "Exiting the menu."
            exit ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4." ;;
    esac

    echo "-----------------------------"
done

