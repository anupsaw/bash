#! /usr/bin/bash

# # Print

# echo Hello world

# ---------------

# # Variables

# # Should be upper case by convention

# NAME="Anup Saw"

# echo "My Name is $NAME"

# # READ  user input 

# read -p "Please enter your response ..." RESPONSE

# echo "$RESPONSE"

# # OR # READ  user input other way

# echo -n "Please enter your name: "
# read ANSWER
# echo $ANSWER

# set --

# echo $_
# echo $-
# echo $0
# echo $@
# echo $#
# echo $*

for arg
do
    echo "$arg"
done

echo $@!
echo $*

echo "$@" !
echo "$*"
