#!/bin/bash
echo "This file has `cat $1 | wc -c | sed 's/ */ /' | tr -cd '[:digit:]'` characters in it."
echo "This file has `cat $1 | tr -d '\n' | wc -c | sed 's/ */ /' | tr -cd '[:digit:]'` characters not counting the newline."
echo "This file has `cat $1 | grep '^$' | wc -l | tr -cd '[:digit:]'` empty lines"
echo "This file contains `cat $1 | tr -cd '[:alnum:]' | wc -c | tr -cd '[:digit:]'` alphanumeric characters"
