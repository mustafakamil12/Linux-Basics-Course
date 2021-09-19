#!/usr/bin/bash

NAME=$1
GREETING="Hi there"
HAT_TIP="*tip of the hat*"
HEAD_SHAKE="*slow head shake*"

# IDE completion
if [ "$NAME" = "Dave" ]; then
        #statements
        echo $GREETING
elif [ "$NAME" = "Steve" ]; then
        echo $HAT_TIP
else
        echo $HEAD_SHAKE
fi

# tests are required

# if your name is Dave
        # greet
# if your name is steve
        # tip hat
# else
        # shake head slowly