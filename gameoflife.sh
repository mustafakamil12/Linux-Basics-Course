#!/usr/bin/bash
# a life simulator
# call with ./$SCRIPTNAME <name> <number>

## Review:
# arguments
# variables
# testing and control flow
# iteration
# functions
# read (get user input and store in variable)
# exit codes


NUM_REQUIRED_ARGS=2
num_args=$#

# Do we have at least two arguments?
if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then
        echo "Not enough arguments. Call this script with
        ${0} <name> <number>"
        exit 1
fi

#Set variables, using arguments
name=$1
number=$2
echo "Your first two arguments were: $1 $2"


# for loops; iteration, string interpolation
echo "You ran this program with ${num_args} arguments. Here they are:"
for arg in "$@"; do
        echo "$arg"
done

# two way of defining a function
spaced(){
        # parameters are not named; they are positional
        echo
        echo "#####################"
        echo "$1"
        echo "#####################"
        echo
}

#echo("hello","two")
# define a function
function javatest(){
        # testing and conditionals
        if [[ $number -eq 99 ]]; then
                spaced "You win! You guessed the secret number! It's amazing"
        elif (( $number < 10 )); then
                spaced "You're a courageous one. I like that about you. Unfortunately, you must still Die"

                # set a variable interactively
                echo "Hi ${name}, to avert a horrible death, plese enter the password:"
                read password

                if [[ "$password" != "Java" ]]; then
                        spaced "Well, at least you're not a Java Programming sympathizer. You can go now."
                else
                        spaced "DIIIIEEEEEEEE! Actually, nevermind. Writing Java is enough \
                                of a hellish punishment. You are free to leave. Take a biscuit on the \ 
                                way out."
                fi
        fi
}

# call a function
javatest $number
exit 0