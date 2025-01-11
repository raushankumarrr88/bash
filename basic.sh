# this is used to tell interpreter to use the which shell
#/bin/bash

# echo is used to send output to the terminal
echo "Hello"

# this is for providing multiline comment start with same word and end with the same word
<<comment
this 
is 
multiline
comment

# this is for varibale, make sure to use no space while defining the veriables
name="raushan"
echo "my name is $name and i am using the systemname $(hostname)"

#constant varibale

readonly college="metro"
echo "my college name is $college"
college="changed"
echo "my college name is $college"

