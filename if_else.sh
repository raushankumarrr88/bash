#!/bin/bash

read -p "Enter marks" mark

if [[ $mark -ge 80 ]]
then
    echo "first div"
elif [[ $mark -ge 60 ]]
then
    echo "second div"
else
    echo "fail"
fi