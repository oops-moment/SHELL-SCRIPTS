IFS=', ' read -r -a LIST
N=${#LIST[*]}

for ((i = 0; i<$N-1; i++))
do
  
   for((j = i+1; j<$N; j++))
    do
        if [ ${LIST[i]} -gt ${LIST[j]} ]
        then
            temp=${LIST[j]}
            LIST[j]=${LIST[i]}
            LIST[i]=$temp
        fi
    done
done
echo ${LIST[@]}