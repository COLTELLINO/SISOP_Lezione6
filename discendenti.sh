#!/bin/bash

if (( "$#" != "1" )) ; then echo "serve un argomento intero" ; exit 1 ; fi
if (( "$1" < "0" )) ; then echo "serve un argomento intero maggiore o uguale a 0" ;
exit 1 ; fi

NUMFIGLI=$1

for (( i=0; $i < ${NUMFIGLI}; i=$i+1 )) ; do
./discendenti.sh $(( ${NUMFIGLI}-1 )) &
done

wait

echo " ${NUMFIGLI}"

exit 0
