#!/bin/bash

#Define the directory containing the .txt files
directory="/home/june/Desktop/"

# Function to print a string letter by letter with a slight delay
print_letter_by_letter() {
	local string="$1"
	local delay=0.05

	for (( i=0; i<${#string}; i++ )); do
		echo -n "${string:$i:1}"
		sleep "$delay"
	done

	echo #Move to the next line after printing the string
}


for file in "$directory"/*.txt; do
	#Check if the file exists and is readable
	if [ -r "$file" ]; then
		echo "Reading contents of $file:"
		#Read and display the contents of the file

		while IFS= read -r line; do
			#print_letter_by_letter "$line"

		        print_letter_by_letter "$line"
			echo #Move to the next line after printing the line	
			sleep 0.5
		done < "$file"

		echo "--------------------------------------"

		# Pause for 5 seconds
		sleep 3
	else
		echo "Error: $file is not readable or does not exist."


	fi
done


