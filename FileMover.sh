#! /bin/sh
# A simple bash script to find all the files with a given extension
# in a particular directory and move them to another directory 
# with a sequential naming scheme 

FILE_EXTENSION=".sgf"
SEARCH_DIR="Games"
DESTINATION_PATH="/home/david/Documents/GitHub/tensorGo/TrainingData/"

# Create a list of all files in SEARCH_DIR with extension FILE_EXTENSION
FILES=$(find $SEARCH_DIR -type f -name "*$FILE_EXTENSION")
count=0

# For each of the files found copy it to DESTINATION_PATH with a new name
for f in $FILES;
do mv -fv "$f" "${DESTINATION_PATH}game${count}${FILE_EXTENSION}"
((count++))
done
