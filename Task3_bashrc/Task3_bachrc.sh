#!/bin/bash

# let's define the path to the .bashrc file
BASHRC="$HOME/.bashrc"

# Function
append_variables() {
    echo "export HELLO=\$HOSTNAME" >> "$BASHRC"
    echo "LOCAL=\$(whoami)" >> "$BASHRC"
}

# Let's check if .bashrc exists in the user's home directory or not
if [ -f "$BASHRC" ]; then
    # Append new variables
    append_variables
    echo "Variables appended to .bashrc."

    # Open a new terminal window (xfce - kali)
    xfce4-terminal &
    # if for ubuntu (gnome)
    #gnome-terminal &

    echo "New terminal opened."
else
    echo "Sorry, .bashrc not found in the home directory."
fi
