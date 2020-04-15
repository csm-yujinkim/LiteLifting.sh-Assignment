#!/bin/bash
echo "This file has `wc -c $1 | sed 's/ */ /' | cut -d ' ' -f 2` characters in it."
