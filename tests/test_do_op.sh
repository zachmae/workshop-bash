#!/usr/bin/env bash
##
## EPITECH PROJECT, 2022
## workshop_bash
## File description:
## test_do_op
##

cyanclair='\e[1;36m'
vertclair='\e[1;32m'
vertfonce='\e[0;32m'
rougeclair='\e[1;31m'
rougefonce='\e[0;31m'
violetclair='\e[1;35m'
rose='\e[1;31m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
grisfonce='\e[0;30m'
grisclair='\e[0;37m'
jaune='\e[1;33m'
blanc='\e[1;37m'
neutre='\e[0;m'
gras='\e[1m'
sousligne='\e[4m'
surligne='\e[41m'

testoutput()
{
    ./do_op $1 &> data
    if [[ $? == $2 ]]
    then
        echo -e "${vertfonce} \t\tTest output $3 ${neutre} ${grisfonce}${gras}PASSED${neutre}"
    else
        echo -e "${rougefonce} \t\tTest output $3 (expected $2)${neutre} ${surligne}NOT PASSED${neutre}"
    fi
    rm -f data
}

testdisplay()
{
    ./do_op $1 &> data
    diff -q data $2 &>/dev/null
    if [[ $? == $3 ]]
    then
        echo -e "${vertfonce} \t\tTest display $4 ${neutre} ${grisfonce}${gras}PASSED${neutre}"
    else
        echo -e "${rougefonce} \t\tTest display $4${neutre} ${surligne}NOT PASSED${neutre}"
        echo -e "${violetclair}\t\tDo you want to see diff? (y/n)${blanc}"
        read answer
        if [ $answer = "y" ]
        then
            diff data $2
        fi
    fi
    rm -f data
}

echo -e "${grisfonce}\e[1m TESTS BASICS ADDITION ${neutre}"
testoutput "1 + 1" 0 "1 + 1"
testdisplay "1 + 1" "tests/output/output_addition" 0 "1 + 1"
echo -e "${grisfonce}\e[1m TESTS BASICS SUBSTRACTION ${neutre}"
testoutput "1 - 1" 0 "1 - 1"
testdisplay "1 - 1" "tests/output/output_substraction" 0 "1 - 1"
echo -e "${grisfonce}\e[1m TESTS BASICS MULTIPLICATION ${neutre}"
testoutput "2 x 1" 0 "2 x 1"
testdisplay "2 x 1" "tests/output/output_multiplication" 0 "2 x 1"
echo -e "${grisfonce}\e[1m TESTS BASICS DIVISION ${neutre}"
testoutput "4 / 2" 0 "4 / 2"
testdisplay "4 / 2" "tests/output/output_division" 0 "4 / 2"
echo -e "${grisfonce}\e[1m TESTS BASICS MODULO ${neutre}"
testoutput "4 % 2" 0 "4 % 2"
testdisplay "4 % 2" "tests/output/output_modulo" 0 "4 % 2"
echo -e "${grisfonce}\e[1m TESTS ERROR HANDLING ${neutre}"
testoutput "4 %" 84 "not enough arguments"
testoutput "4 % 2 1" 84 "too much arguments"
testoutput "a + 2" 84 "not a number"
testoutput "1 + b" 84 "not a number 2"
testoutput "1 s 4" 84 "unknown operand"
testoutput "1 / 0" 84 "division by 0"
testoutput "1 % 0" 84 "modulo by 0"
