!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo "Pass two command line arguments."
    exit 1
fi



echo $writestr > $writefile

if [ $? -ne 0 ]
then
    echo "$writestr could not be written to $writefile."
    exit 1
fi
