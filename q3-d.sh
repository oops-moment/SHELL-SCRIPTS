read file_name
IFS=$'\n' #IFS environment variable to a line feed character using $'\n' which interp[rets nexy line character]
I=1
while read line; do
echo -n Line No:$I-Count of Words: 
wc -w <<< "$line"   
I=$(($I+1))
done < $file_name