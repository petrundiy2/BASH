#!/bin/bash
k=0
for myfile in ./*
    do
	if [ "${myfile##*.}" = "$1" ]
	then
       	    mv $myfile ${myfile%.*}.$2
	    k=$k+1
	else
       		echo "$myfile"
	fi
done
if [ $k = 0 ]
then
	echo "net takih failov!"
fi
