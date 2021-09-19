#!/usr/bin/bash

spaced(){
        # parameters are not named; they are positional
        echo
        echo "#####################"
        echo "$1"
        echo "#####################"
        echo
}


echo "Hello Mustafa How Are You, Hope Doing Well"

num=1
if [[ $num -eq 1 ]]; then
        spaced "Hello Mustafa How Are You, Hope Doing Well"
fi