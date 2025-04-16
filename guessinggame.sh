#!/bin/bash

# Function to count files
function file_count {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the guessing game!"
correct=$(file_count)
guess=-1

while [[ $guess -ne $correct ]]; do
  read -p "How many files are in the current directory? " guess
  if [[ $guess -lt $correct ]]; then
    echo "Too low!"
  elif [[ $guess -gt $correct ]]; then
    echo "Too high!"
  fi
done

echo "Congratulations! You guessed it right: $correct files."
