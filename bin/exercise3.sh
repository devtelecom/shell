#/bin/bash
date=$(date +%d-%m-%y)
echo $date
echo "The day is: " ${date:0:2}
echo "The Month is: " ${date:3:2}
echo "The Year is : " ${date:6:2}
