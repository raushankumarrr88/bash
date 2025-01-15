#!/bin/bash

echo "------------------------"
echo "FOR CHECKING SITE STATUS"
echo "------------------------"

if [[ $# -eq 0 ]]
then
    echo "this script needs site address to run. i.e. www.google.com"
    exit 1
fi

function sites_checker {
    date
    local site=$1
    ping $site &> /dev/null
    if [[ $? -eq 0 ]]
    then
        echo "its avaliable"
    else
        echo "not connecting"
    fi

}

sites_checker $1 >> output.txt