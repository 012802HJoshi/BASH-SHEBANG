#!/bin/bash

# Trap - used to catch and handle signals within a shell script

# read -p "Enter file name: " file
# echo "You entered: $file"

# trap "echo 'Script INTERRUPTED. File was: $file'" INT
# trap "echo 'Script EXITED. File was: $file'" EXIT
# trap "echo 'Script TERMINATED. File was: $file'" TERM
# trap "echo 'Script ERROR. File was: $file'" ERR

# echo "Running... (press Ctrl+C to interrupt)"
# sleep 20


# Subshells ( ... ) - Run Commands in a New Environment
# a new child process that inherits environment variables but doesn’t affect the parent shell

# count=5
# ( count=10; echo "Inside subshell: $count" )
# echo "Outside subshell: $count"

# # $(command) — Command Substitution
# #useful for storing results into variables or using dynamic values inline.

# current_date=$(date +"%Y-%m-%d")
# echo "Today's date: $current_date"

# echo "User count: $(who | wc -l)"

# # cron — Schedule Scripts Automatically

# crontab -e
# * * * * * /path/to/script.sh

# # Check Existing Cron Jobs
# crontab -l

# # Exit on First Error
# # When enabled, the script will immediately exit if any command fails.

# set -e  # stop on error

# echo "Start"
# cp missing.txt /tmp/
# echo "This line will never execute"

# set -x  # Debug Mode
# Prints every command before executing it — like a live trace.
# Use this when debugging complex scripts — turn off with set +x when not needed.

# set -x
# echo "Debugging example"
# ls /etc/hosts
# set +x
# echo "Debugging stopped"

# # source file.sh - Import Another Script

# source ./utils.sh

# # Parallel Processing (&,wait)

download() {
  echo "Downloading $1..."
  curl -s -O "$1"
}

download "https://example.com/a.zip" &
download "https://example.com/b.zip" &
download "https://example.com/c.zip" &

wait #until the process 
echo "All downloads completed!"

# Track jobs

job1=$(long_task_1 & echo $!)
job2=$(long_task_2 & echo $!)
wait $job1 $job2