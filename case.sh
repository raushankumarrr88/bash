#!/bin/bash

echo "provide an option"
echo " a for print a date"
echo " b for list of script"
echo "c for check the current location"

read choice

case $choice in
    a)  echo "todays date is"
        date;;
    b)ls;;
    c)pwd;;
    *)echo "please provide a valid input"
esac