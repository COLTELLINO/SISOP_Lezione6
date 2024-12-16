#!/bin/bash

FILES=`find /usr/include/linux/ -mindepth 2 -name "*.h" -print`
if [[ -z ${FILES} ]] ; then
echo "nessun file trovato"
else

for RECENTE in ${FILES} ; do
break
done
for NAME in ${FILES} ; do
if [[ ${RECENTE} -ot ${NAME} ]] ; then
RECENTE=${NAME}
fi
done
fi
echo "il file piu' recente e' ${RECENTE}"
