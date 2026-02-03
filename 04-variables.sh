#!/bin/bash

# No space required in between Value and assignment operartor(=)
PERSON1=$1  # Here $1, $2 and $3 will accept the arguments on the CLI while executing the script.
PERSON2=$2  # How to execute: sh 04-variables.sh //command will execute sequentially as per the arguments.
PERSON3=$3

echo "$PERSON1: Hello...$PERSON2, how are you doing?"
echo "$PERSON2: Hi..$PERSON1, I'm good..how about you?"
echo "$PERSON1: Which place are you living $PERSON2?"
echo "$PERSON2: I'm living in Hyderabad $PERSON1."
echo "$PERSON3: Come, please take your seat $PERSON1, $PERSON2"