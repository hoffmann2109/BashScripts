#!/bin/bash

# Function to count down
count() {
  total=$1
  for ((i=total; i>0; i--)); do
    sleep 1
    printf "Time remaining $i secs \r"
  done
  echo -e "\n\a"
}

# Ensure the script is invoked with an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <seconds>"
  exit 1
fi

# Run the count function with the provided argument
count "$1"
