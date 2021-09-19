#!/usr/bin/bash

## Arguments reference:
# $# --> number of args that our script was run with
# $0 --> the filename of our script
# $1..$n --> script arguments

# what's our filename?
ourfilename=$0
echo $ourfilename

# how many arguments was the script
num_arguments=$#
echo $num_arguments

# what were the arguments?
echo "The first three arguments were ${1}, ${2} and ${3}"
echo "$5"
echo "testing special cases"
echo "$1 the positional parameters using 1..n"
echo "$@ is an array-like construct of all positional parameters"
echo "$* is the IFS expansion of all positional parameters"
echo "$# is the number of positional parameters"
echo "$- current options set for the shell"
echo "$$ pid of the current shell (not subshell)."
echo "$_ most recent parameter (or the abs path of the command to start the current shell immediately after startup)."
echo "$IFS is the (input) field separator."
echo "$? is the most recent foreground pipeline exit status."
echo "$! is the PID of the most recent background command."
echo "$0 is the name of the shell or shell script."

echo "Number of lines in testfile is `wc -l < ./testfile` of lines"