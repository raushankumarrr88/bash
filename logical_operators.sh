#!/bin/bash

#AND 

read -p "what is u age" age
read -p "your country" nation
echo "your country is $nation"
country=${nation^^}
echo "transformed country is $country"
if [[ $age -ge 18 ]] && [[ $country == "INDIA" ]]
then
    echo "you can vote"
else 
    echo "you cannot vote"
fi  