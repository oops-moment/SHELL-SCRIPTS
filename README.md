# SHELL_SCRIPT_TO_HANDLE_FILES
## SO here are my shell scripts that will give you basic intution how to handle the files using shell.
### Various properties of file such as total lines it , total words, total size and stuff were calculated using shell script.
### Also applicational questions were done such as string reverse so that user can be made familiar with using shell scripts.
---
---
## Requirements

- Ubuntu 

## Question 1 (Q1.sh file)

### User need to enter the existing filename where changes are required , In this question following script was written:
- **read file_name** : This command stores the value enetered by user into variable file_name
- **awk  'NF'  $file_name** : for a part
- **awk '!seen[$0]++' $file_name** : basically here we use awk and seen commnad in order to keeep track of duplicates as using $0 complete line is sent for comparison and filename is paased as argument as input file. 

### Command to run this file is:
- chmod 777 Q1.sh
- ./Q1.sh
- enter the file name
- *output is printed on terminal itself*
---

## Question 2 (Q2.sh file)

- read file_name : reads the name of the file
- while read string : while there is some stdin
- do 
- if test "$string" != "" : if expression is equal to "
- then
- ANSWER=$(cut -d "~" -f2 <<< "$string once said,") 
-  ANSWER1=$(cut -d "~" -f1 <<<" $string ")
- echo -n "${ANSWER}"
- echo    "\"$ANSWER1\""
- echo
- fi
- done < $file_name > speech.txt 

### Command to run this file is:
- chmod 777 Q2.sh
- ./Q2.sh
- enter the file name
- *output is redirected to speech.txt*
---
## Question 3A (Q3a.sh file)

### User need to enter the existing filename where changes are required , In this question following script was written:
- **read file_name** : This command stores the value enetered by user into variable file_name
- **stat -c %s $file_name** :  stat command gives you info about the file like filesize etc -c allows to read the command %s tells size of file in bytes and then file name is passed as argument.
- *Output is printed on terminal only* 
### Command to run this file is:
- chmod 777 Q3a.sh
- ./Q3a.sh
- enter the file name
---

## Question 3B (Q3b.sh file)

### User need to enter the existing filename where changes are required , In this question following script was written:
- **read file_name** : This command stores the value enetered by user into variable file_name
- **sed -n '$=' $file_name** :  sed command is used and -n tells the sed to count number of lines and file name is passed as argument
-  *Output is printed on terminal only* 
### Command to run this file is:
- chmod 777 Q3b.sh
- ./Q3b.sh
- enter the file name
---
## Question 3C (Q3c.sh file)

### User need to enter the existing filename where changes are required , In this question following script was written:
- **read file_name** : This command stores the value enetered by user into variable file_name
- **cat $file_name | wc -w** : -wc tells the word count of the file passed as argument
-  *Output is printed on terminal only* 
### Command to run this file is:
- chmod 777 Q3c.sh
- ./Q3c.sh
- enter the file name
---
## Question 3D (Q3d.sh file)

### User need to enter the existing filename where changes are required , In this question following script was written:
- **read file_name** : This command stores the value enetered by user into variable file_name
- **IFS=$'\n'** : IFS environment variable to a line feed character using dollar'\n' which interprets next line character]
- **I=1** : I being intialized to 1
- **while read line; do** : while lines are being read by stdin do 
- **echo -n $I :** : echo line number : with wordcount
- **wc -w <<< "$line"** : wc tells word count of line passed as argument  
- **I=$(($I+1))**   : line being incremented ie next line
- **done < $file_name** : file passed as argument
-   *Output is printed on terminal only* 
### Command to run this file is:
- chmod 777 Q3d.sh
- ./Q3d.sh
- enter the file name
---

## Question 3E (Q3e.sh file)

### User need to enter the existing filename where changes are required , In this question following script was written:
- **read file_name** : This command stores the value enetered by user into variable file_name
- sed -e  's/[^A-Za-z]/ /g' $file_name | tr ' ' '\n' | awk 'BEGIN { FS="[^a-zA-Z]+" } {
-       for (i=1; i<=NF; i++) {
-            word = tolower($i)
-            phrase[word]++
-        }
-    }
-    END {
-        for (w in phrase)
-        {
-            if (phrase[w]!=1)
-            {
-                printf("Word: <%s> - Count of repitition: [%d]\n", w, phrase[w]);
-            }
-            }
-    }'
### Command to run this file is:
- chmod 777 Q3e.sh
- ./Q3e.sh
- enter the file name

---
## Question 4 (Q4.sh file)

### User needs to enter the element of Array the code used is as below:
- IFS=', ' read -r -a LIST: reads element of array onto the list with commas within
- N=${#LIST[*]} : contains total number of elements in the array

- for ((i = 0; i<$N-1; i++)) : bubble sort
- do
  
- for((j = i+1; j<$N; j++))
- do
- if [ ${LIST[i]} -gt ${LIST[j]} ]
-  then
- temp=${LIST[j]} :  swapping the numbers
- LIST[j]=${LIST[i]}
- LIST[i]=$temp
- fi
- done
- done
- echo ${LIST[@]}
- *Output is printed on terminal only* 
### Command to run this file is:
- chmod 777 Q4.sh
- ./Q4.sh
- enter the elements of array with commas
---
## Question 5 (Q5.sh file)

### In this question user needs to input the string he wanna reverse
- read s : reads the string s
- string_length=${#s} :string_length contains the length of string s
- i=$((string_length-1)) #as index starts from zero so we do string length -1
- while [[ $i -ge 0 ]]
- do
-    revstr=$revstr${s:$i:1} :gives string as parameter and numbers of characters you wanna reverse in this case 1
-   i=$((i-1)) : i is decremented
done
- echo "$revstr" ; reversed string
- y=$final_string
- y=$(echo "$y" | tr "0-9a-zA-Z" "1-9a-zA-Z_") : this command increments the each character by 1
- echo "$y"  
- var2=2
- A=$((string_length / var2))
- i=$A-1 #as index starts from zero so we do A
- while [[ $i -ge 0 ]]
- do
-    answer=$answer${s:$i:1}
-     i=$((i-1))
- done
- j=$A
- while [[ $j -lt $string_length ]]
- do
-    answer=$answer${s:$j:1}
-    j=$((j+1))
- done
- echo "$answer"

- *Output is printed on terminal only* 
### Command to run this file is:
- chmod 777 Q5.sh
- ./Q5.sh
- Enter the string
---
