#!/bin/bash

PATHVAR="${PATH}"

while [[ -n "${PATHVAR}" ]] ; do
	PATHTEMP="${PATHVAR%%/*}"
	echo "${PATHTEMP%%:*}"
	PATHVAR=${PATHVAR#*/}
	
	if [[ ${PATHVAR} == ${PATHTEMP}  ]] ; then
		break
	fi
done
