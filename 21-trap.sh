#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello World"
echo "I am learning Shell"
echoo "printing error here"  # Here it will give an error since its a invalid echo statement
echo "No error in this"      # So it will set -e detects the error. 