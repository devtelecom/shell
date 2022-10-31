export GREEN="\033[32m"
for i in `echo $1`
do 
echo -e " $GREEN **** Process Begins **** $RESET"
echo -e  "$RED Wait for 15 Seconds System is Busy $RESET" 
sleep 15 
echo " Hello $i "
done 

