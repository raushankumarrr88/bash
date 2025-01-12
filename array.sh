#!/bin/bash

#array
# for initialization of arrray
myarray=(1 2 4 5 6 "raushan" helllo)


#feaching the value based on index
echo "first is ${myarray[0]}"

#printing all the values for it use *
echo "all the values in array is ${myarray[*]}"


#for getting the length of a array
newarrray=(1 2 4 5 56 7 7)
echo "length of the array is ${#newarrray[*]}"


<<comment 
fetching 
specific values
for index 2-3
comment
echo "values from index 2-3 is ${newarrray[*]:2:2}"


#updating a array with new values
newarrray+=( New 30 40)
echo "values of new array is ${newarrray[*]}"





