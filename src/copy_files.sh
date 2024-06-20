#!/bin/bash

# Copy VSCode settings.json
sudo cp ~/Library/'Application Support'/Code/User/settings.json files/VSCode/settings.json
# Copy .bash_profile from line with "### SHORTCUTS START ###" to line with "### SHORTCUTS END ###"
awk '/### SHORTCUTS START ###/,/### SHORTCUTS END ###/' ~/.bash_profile > files/system/.bash_profile
