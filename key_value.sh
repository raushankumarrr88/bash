#!/bin/bash

<<comment
key value pair
comment

#how to store a key value pair

#declaring a array not initializing and providing the vlues to it
declare -A myarray

myarray=([name]=raushan [city]=hyderabad)
echo "my name is ${myarray[name]} amd city is ${myarray[city]}"


state="this is name"

newstate=${state/name/raushan}
echo $newstate