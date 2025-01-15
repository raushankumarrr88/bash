#!/bin/bash
#$Revision:001
#Date-15-01-2025
#variable
FOLDER_PATH=/c/Users/adsi2/Desktop/Work/bash_Scripts/files
DAYS=10
DEPTH=1
RUN=0

echo "$FOLDER_PATH"
#CHECK THE ARHIVES DIR IS PRESENT OR NOT
if [[ ! -d archives ]]
then
    mkdir archives
    echo " Archives directory created"
else
    echo " Archives Directory is available"
fi

#CHECK IS THE BASE FILE IS EXIST OR NOT
if [[ ! -d $FOLDER_PATH ]]
then
    echo "directory doesnot exist: $FOLDER_PATH"
    exit 1
fi

#list the files and with the size of the files in the provided dir
for i in $(find $FOLDER_PATH -maxdepth $DEPTH -type f -size +20)
do
    if [[ $RUN -eq 0 ]]
    then 
        gzip $i || exit 1
        mv $i.gz $FOLDER_PATH/archives 
    
done






