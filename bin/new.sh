F1=$1 # test1.rdt redacted words
F2=$2 # test1.doc which need to be update 
echo $arr
arr=(`cat $F1`)
ac=${#arr[@]}
echo $ac
n=$(cat $F2 | wc -l)
echo $n
while( i < $n)
do
 a=head -$i $F2 | head -1
for l in $a
do 
 j = 0
  while(j < $ac)
  do 
   count = 0
    if ($arr[j] == $l)
    then
     count+=1
      if($count == 1)
      then
       sed 's/$l/----/g'
      elif($count > 1)
      then
       c = cat $a | wc -c
      elif($count == 0)
       echo "No Change"
                        fi         
   j+=1
   done
 l+=1
 done
i+=1
echo cat $F2

done
