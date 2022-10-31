awk -F ":" '{print $1}' /etc/passwd | sort >ou

pc=$(cat /etc/passwd | wc -l)
echo $pc >>prev_count
ouser=`tail -2 prev_count | head -1`

echo "Previous count of users:" $ouser
user=`tail -1 prev_count`

echo "count of users:" $user
if [ $user -gt $ouser ]
then
dif=$(( $user - $ouser ))

echo $dif
new_user=(`tail -$dif /etc/passwd`) # | awk -F ":" '{print $1}'`)
echo ${#new_user[@]}

comm -13  nu ou>du

for i in ${new_user[@]}
do 
echo $i
done
elif [ $ouser -gt $user ]
then
dif=$(($ouser -$user ))
echo " No. of users deleted " $dif  ; cat du
else 
echo " No User count modified " $ouser

fi
awk -F ":" '{print $1}' /etc/passwd | sort >nu
