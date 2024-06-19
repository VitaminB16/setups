#!/bin/bash

# Copy VSCode settings.json
sudo cp ~/Library/'Application Support'/Code/User/settings.json files/VSCode/settings.json
# Copy .bash_profile from line with "# SHORTCUTS" to the end
awk '/# SHORTCUTS/,0' ~/.bash_profile > files/system/.bash_profile
