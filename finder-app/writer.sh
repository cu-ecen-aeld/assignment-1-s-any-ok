#! /bin/bash

if [ "$#" -eq 1 ]
then
	echo "need 2 parameters"
	exit 1
elif [ "$#" -eq 0 ]
then
	echo "need 2 parameters"
	exit 1
else
	F=$1
	S=$2
	mkdir -p $( dirname ${F})
	echo ${S} > ${F}
	exit 0
fi
