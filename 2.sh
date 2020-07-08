#!/bin/bash

for argument in "$@"
do
	if [ -f "$argument" ]; then
		ls -l "$argument"
	fi
done
