#!/bin/bash

# for i in 1 2 3 4 5 6 7 8 9
# do
#     echo "number is $i"
# done

# for i in {1..13}
# do
#     echo "number is $i"
# done


# for name in raushan kumar
# do
#     echo "name is $name"
# done



#getting values from file

# FILE=name.txt

# for name in $(cat $FILE)
# do
#     echo "$name"
# done


myarray=(1 2 3 4 5 6 7 8 Hello Hi)

length=${#myarray[*]}

for (( i=0;i<$length;i++ ))
do
    echo "value of array is ${myarray[$i]}"
done