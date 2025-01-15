#!/bin/bash

if [[ $# -eq 0 ]]
then
    echo "this is a Calculator"
    echo "please provide two arg to do operation"
    exit 1
fi

echo "this is a Calculator"
echo "Press A for add"
echo "Press B for Subs"
echo "Press c For mul"
echo "Press D for Div"


function addition {
    local num1=$1
    local num2=$2
    let sum=$num1+$num2
    echo "the sum of $num1 and $num2 is $sum"
}
function substract {
    local num1=$1
    local num2=$2
    let sub=$num1-$num2
    echo "the Sub of $num1 and $num2 is $sub"

}
function mul {
    local num1=$1
    local num2=$2
    let mul=$num1*$num2
    echo "the mul of $num1 and $num2 is $mul"

}
function div {
    local num1=$1
    local num2=$2
    let div=$num1/$num2
    echo "the Div of $num1 and $num2 is $div"

}
read -p "Enter the choice from above" choice
echo "choice is $choice"
char=${choice,,}
echo "Transformed choice is $char"
case $char in
    a)
        echo "You chose Addition"
        addition $1 $2;;
    b)
        echo "You choose to substract"
        substract $1 $2;;
    c)
        echo "you choose to mul"
        mul $1 $2;;
    d)
        echo "you choose to div"
        div $1 $2;;
    *)
        echo "Please enter a valid input"
esac



