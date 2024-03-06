#!/bin/bash

# Define the base directory where the subfolders are located
base_directory="/home/june/Desktop/files/FedTO/FedTOpaper/Data/"

# Loop through each subfolder in the base directory
for subfolder in "$base_directory"/*; do
    # Check if it is a directory
    if [[ -d "$subfolder" ]]; then
        # Define the path to the MatchedCoordinates subfolder
        matched_coordinates_folder="$subfolder/MatchedCoordinates"
        
        # Check if the MatchedCoordinates subfolder exists
        if [[ ! -d "$matched_coordinates_folder" ]]; then
            # Create the MatchedCoordinates subfolder if it doesn't exist
            mkdir "$matched_coordinates_folder"
        fi
        
        # Move all .plt files from the subfolder to the MatchedCoordinates subfolder
        mv "$subfolder"/*.plt "$matched_coordinates_folder"
    fi
done
