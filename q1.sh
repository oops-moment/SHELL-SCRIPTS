read file_name  #read command stores the value entered by user into file_name variable
awk  'NF'  $file_name #regex command basically telling bash to remove line starting with space ending with end line
#using this command file_name contents gets changed and all the empty lines are removed and file gets modified
# cat $file_name
# read file_name #stores the file name enetered by user into file_name
# awk '!seen[$0]++' $file_name # basically here we use awk and seen commnad in order to keeep track of duplicates as using $0 complete line is sent for comparison
# and filename is paased as argument as input file
#awk '!seen[$0]++' $file_name > file 2>&1 #basically here we use awk and seen commnad in order to keeep track of duplicates as using $0 complete line is sent for comparison
# and filename is paased as argument as input file, it must be noted that output is redirected using > operator to (file) basically you can enter any file name here where you want output to be redirected.
awk '!seen[$0]++' $file_name