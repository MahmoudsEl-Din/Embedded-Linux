#!/bin/bash

# Let's Check if we have one argument
if [ "$#" -ne 1 ]; then
    echo "Error: Incorrect usage. Please have one key."
    echo "Usage: $0 <key>"
    exit 1
fi

# next we should assign the key to a variable
KEY=$1

# then Check if config.ini exists in the same folder
if [ ! -f "config.ini" ]; then
    echo "Error: config.ini file not found."
    exit 1
fi

# and try to find the key in the config.ini file
VALUE=$(grep -E "^$KEY=" config.ini | cut -d'=' -f2-)

# finally let's Check if the key was found or not
if [ -z "$VALUE" ]; then
    echo "Key '$KEY' not found in the configuration file."
else
    echo "$VALUE"
fi
