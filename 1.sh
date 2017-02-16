#!/bin/bash
$argu1=tar
$argu2=d
for myfile in /etc/*
	do
	if [ "${myfile##*.}" = "$argu1" ]
	then
       		$myfile=${myfile%.*}+"."
		$myfile=$myfile+$argu2
		echo "$myfile"
	else
       		echo "No"
	fi
done
