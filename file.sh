#!/bin/bash
files=($(ls *.txt))
#echo count of files ${#files[@]}

for fname in ${files[@]}
do 
  if [ -r $fname ];
   then echo -en $fname "\t" "READ(Y) \t"
  else 
      echo -en   $fname "\t" "READ(N) \t" 
   fi
  if [ -w $fname ];
   then echo -en  "WRITE(Y) \t"
  else
      echo -en    "WRITE(N) \t" 
   fi
  if [ -x $fname ];
   then echo    "EXECUTE(Y)" 
  else
      echo      "EXECUTE(N)"  
   fi
done




for fname in ${files[@]}
do 
 echo "$fname"  
 stat $fname --format=%A
done

