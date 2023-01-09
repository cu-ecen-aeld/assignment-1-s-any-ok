#!/bin/bash

if [ "$#" -eq 1 ]
then
	echo "searchstr not exist"
	exit 1
elif [ "$#" -eq 0 ]
then
	echo "filesdir and searchstr not exist"
elif [ ! -d "$1" ]
then
	echo "filesdir is not a directory"
else
	X=$(ls "$1" -1 | wc -l)
	Y=$(grep -r "$2" "$1"/* | wc -l)
	echo "The number of files are ${X} and the number of matching lines are ${Y}"
	exit 0
fi

