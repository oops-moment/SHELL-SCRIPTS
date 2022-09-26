read file_name
while read string
do 
if test "$string" != ""
then
  ANSWER=$(cut -d "~" -f2 <<< "$string once said,")
  ANSWER1=$(cut -d "~" -f1 <<<" $string ")
echo -n "${ANSWER}"
echo    "\"$ANSWER1\""
echo
fi
done < $file_name > speech.txt 