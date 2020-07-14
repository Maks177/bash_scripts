#!/bin/bash

for file in $(find ~ -type f -name "*.conf" -o -type f -name "*.config")
do
	cp "$file" /opt/backup/
	echo "$file" >> /opt/backup/backup.txt
done

for path_to_file in $(cat /opt/backup/backup.txt | sort | uniq)
do
	if [ ! -f "$path_to_file" ]; then
		cp /opt/backup/$(basename "$path_to_file") "$path_to_file"
	fi

done
