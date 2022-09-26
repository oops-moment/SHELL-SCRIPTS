read file_name #This command stores the value enetered by user into variable file_name
stat -c %s $file_name # stat command gives you info about the file like filesize etc etc -c allows to read the command %s
# size of fle in bytes and then file name is passed as argument