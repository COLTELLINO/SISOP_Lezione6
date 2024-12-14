#!/bin/bash

NEGRO=""

while read -r savi ; do 
	NEGRO=$(echo ${savi} | sed 's/\*/\\*/g ; s/\?/\\?/g ; s/\[/\\[/g ; s/\]/\\]/g')
	echo "${NEGRO}"
done 
