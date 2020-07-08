#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "You must input only one parameter for correct work this script" 
else
	if [ -f "$1" ]; then
		`chmod +x "$1"`
	elif [ -d "$1" ]; then
		echo This is not a regular file
	else
		echo "File doesn't exists"
	fi
fi
