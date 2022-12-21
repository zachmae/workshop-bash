#!/usr/bin/env bash

vertclair='\e[1;32m'
neutre='\e[0;m'
gras='\e[1m'
sousligne='\e[4m'
surligne='\e[41m'

## Task 1: print the number of arguments


echo "Number of arguments: $#"

## Task 2: print the arguments


echo "Arguments: $@"

## Task 3: is there an argument ?

if [ $# -eq 0 ]
then
    echo "no argument"
else
    echo "argument"
fi


## Task 3 (Bonus): is the first argument a number ?

if [ $# -eq 0 ]
then
    echo "no argument"
elif [[ $1 =~ ^[0-9]+$ ]]
then
    echo "number"
else
    echo "not a number"
fi


## Task 4: i print every number from 1 to 10

echo -e "\tTask 4: Let's start with loops ?"

for (( i=1; i<=10; i++ ))
do
    echo $i
done

## Task 4 (Bonus): Let's iterate over a list of arguments

for each in $@
do
    echo $each
done

## Task 5: hello function

my_function()
{
    echo "Hello world"
}

my_function

## Task 6.1: test output function

testoutput()
{
    #execute binary with arguments via redirection for more readability
    ./do_op $1 &> data
    ## check the last return value and compare it to the expected one
    if [[ $? == $2 ]]
    then
        ## if sucess
        echo -e "\t\tTest output $3 PASSED"
    else
        ## if failure
        echo -e "\t\tTest output $3 (expected $2) NOT PASSED"
    fi
    ## remove temp file
    rm -f data
}

## Task 6.2: test display function

testdisplay()
{
    # execute binary with arguments via redirection to store the output
    ./do_op $1 &> data
    # check the difference between the temp file and the given file as argument
    diff -q data $2 &>/dev/null
    # check the last return value and compare it to the expected one
    if [[ $? == $3 ]]
    then
        # if true
        echo -e "\t\tTest display $4 PASSED"
    else
        # if false
        echo -e "\t\tTest display $4 NOT PASSED"
        # display the difference
        diff data $2
    fi
    # remove temp file
    rm -f data
}
