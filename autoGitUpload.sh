#!/bin/bash

#Check if the branch and directory arguments are provided

if [ $# -lt 2 ]; then
	echo "Error: Branch name and/or directory not provided. Usage: ./script.sh <branch> <directory>"
	exit 1

fi

branch="$1"
directory="$2"

#Navigate to your repository directory
cd "$directory" || { echo "Error: Directory not found."; exit 1; }

#Add all changes
git add .

#Commit changes with a default commit message
git commit -m "Automated commit"

#push changes to tthe default remote repository (usually 'origin')
git push origin "$branch"

#print a message indicating the completion of the script

echo "Changes have been committed and pushed to the '$branch' branch of the repository in the directory '$directory'."



