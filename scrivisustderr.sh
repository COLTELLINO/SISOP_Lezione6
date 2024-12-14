#!/bin/bash

while read culo ; do
	echo "${culo%% *}" 1>&2
	echo "evviva"
done 
