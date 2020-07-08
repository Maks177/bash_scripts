#!/bin/bash

counter=0
FILE="$(pwd)/info_file.txt"

if [ -f "$FILE" ]; then
	rm "$FILE"
fi

for directory in $(ls "$HOME")
do
	if [ -d "$HOME/$directory" ]; then
		cd "$HOME/$directory"
		counter=$(ls -1 | wc -l)
		cd ~
		echo "$directory $counter" >> "$FILE"
	fi
done
