#!/bin/bash

# Write files/system/.bash_profile into ~/.bash_profile between the lines "### SHORTCUTS START ###" and "### SHORTCUTS END ###"
# If the file does not contain these lines, append the content of files/system/.bash_profile to the end of the file

if grep -q "### SHORTCUTS START ###" ~/.bash_profile; then
    # Replace the content between the lines "### SHORTCUTS START ###" and "### SHORTCUTS END ###" with the content of files/system/.bash_profile
    awk '/### SHORTCUTS START ###/,/### SHORTCUTS END ###/' ~/.bash_profile >files/system/.bash_profile
    sed -i '' '/### SHORTCUTS START ###/,/### SHORTCUTS END ###/d' ~/.bash_profile
    cat files/system/.bash_profile >>~/.bash_profile
else
    # Append the content of files/system/.bash_profile to the end of the file
    cat files/system/.bash_profile >>~/.bash_profile
fi
