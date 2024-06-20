#!/bin/bash

arg=$1

if [ "$arg" == "from" ]; then
    # ~/.bash_profile -> files/system/.bash_profile, etc.
    chmod +x src/copy_files.sh
    sudo src/copy_files.sh
elif [ "$arg" == "to" ]; then
    # files/system/.bash_profile -> ~/.bash_profile, etc.
    python src/set_bash_profile.py
else
    echo "Invalid argument"
    exit 1
fi
