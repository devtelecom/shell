#!/bin/bash
fruits=("Apple" "Banana" "Mango")
#echo count of array elements ${#fruits[@]}
#echo count of array elements ${#fruits[*]}
#echo Access all Array elemets ${fruits[@]}
#echo Access all in one string ${fruits[*]}
#echo Access all in one string ${fruits[0]:2:4}
#echo Access all in one string ${fruits[1]:3:5}
#echo Access all in one string ${fruits[2]}


i=0

while [ $i -lt ${#fruits[@]} ]
   do 
    echo ${fruits[i]}
    let i++
done



echo access indes  ${!fruits[*]}   


read -p "Enter num of values" n

for ((i=0;i<n;i++))
do 
a=i+1
   read -p "Enter the number -$[a]:" NUM[$i]
done

echo "Array Elements are: ${NUM[@]}"

esum=0
osum=0

for val in ${NUM[@]}
do 
  if [ $[val%2] -eq  0 ]
  then
   let  esum=esum+val
  else 
    let osum=osum+val 
  fi
done

echo sum of Even num: $esum
echo sum of odd num: $osum

