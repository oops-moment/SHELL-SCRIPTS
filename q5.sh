read s             # reads the string s
string_length=${#s} #string_length contains the length of string s
i=$((string_length-1)) #as index starts from zero so we do string length -1
while [[ $i -ge 0 ]]
do
    final_string=$final_string${s:$i:1}
    i=$((i-1))
done
echo "$final_string"
y=$final_string
y=$(echo "$y" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo "$y"  
var2=2
A=$((string_length / var2))
i=$A-1 #as index starts from zero so we do A
#echo $A
while [[ $i -ge 0 ]]
do
    answer=$answer${s:$i:1}
    i=$((i-1))
done

j=$A
while [[ $j -lt $string_length ]]
do
    answer=$answer${s:$j:1}
    j=$((j+1))
done
echo "$answer"
