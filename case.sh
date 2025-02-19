#!/bin/bash

# echo "provide an option"
# echo " a for print a date"
# echo " b for list of script"
# echo "c for check the current location"

# read -p "PLease enter the choice: " choice
# char=${choice,,}
# echo "Transformed char is ${char}"

# case $char in
#     a)  echo "todays date is"
#         date;;
#     b)ls;;
#     c)pwd;;
#     *)echo "please provide a valid input"
# esac

echo "provide a option"
echo "press a for list"
echo "press b for date"
echo "press c for creating dir"
echo "press d for present working dir"

read -p "enter your option" choice
echo "this is the value of choice before changing $choice"
char=${choice,,} 
echo "this is the value of choice after changing $char"

case $char in
    a) ls -al;;
    b) date;;
    c) read -p "please enter the name of the dir: " dir
        mkdir -p $dir
        echo "dir created";;
    d) pwd;;

esac

