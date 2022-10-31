#!/bin/bash

F1=$1
F2=$2
IFS=$'\n'

grpstr=""
sedstr=""

for j in $(cat $F1)
do
    grpstr="${grpstr}${j}|"
    sedstr="${sedstr}s/${j}/----/g;"
done

for i in $(cat $F2)
do
    cnt=`echo $i | egrep -o -i "${grpstr}" | wc -l`
    len=`echo $i | awk '{ print length }'`

    if [ $cnt -gt 1 ]
    then
       abc=$(printf "%-${len}s" "-")
       echo "${abc// /-}" 
    else
       echo $i | sed "${sedstr}" 
    fi

done
