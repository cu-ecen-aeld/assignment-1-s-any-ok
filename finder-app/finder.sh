#!/bin/bash

if [$# -ne 2]
then
    echo "Two command line arguments were not passed."
    exit 1
fi


filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
    echo "$filesdir does not represent a directory on the filesystem."
fi

# X=$( ls -Rf $filesdir | wc -w )
X=$( find $filesdir -type f | wc -l )

Y=$( find $filesdir -type f -exec grep "$searchstr" {} \+ | wc -l)
# Y=$( echo $X | grep "$searchstr" | wc -l )

echo "The number of files are $X and the number of matching lines are $Y"
