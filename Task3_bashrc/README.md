# Bash Script for .bashrc Modification

## Overview
This Bash script automates the process of appending new variables to the `.bashrc` file in the user's home directory. It checks for the existence of `.bashrc`, and if found, appends new variables and opens a new terminal window.

## Features
- **Check `.bashrc` Existence**: Verifies if `.bashrc` exists in the user's home directory.
- **Append Environment Variables**:
  - `HELLO`: Set to the value of the system's `HOSTNAME`.
  - `LOCAL`: A local variable set to the username of the current user (output of `whoami` command).
- **Open New Terminal**: Opens a new terminal window upon script completion.

## Prerequisites
- A Linux-based operating system.
- Bash shell.
- Access to the user's home directory.
- Permissions to modify the `.bashrc` file.

## Installation
1. Download the `Task3_bashrc.sh` script.
2. Give execute permission:
```
chmod +x Task3_bashrc.sh
```

## Usage
Execute the script from the terminal:
```
./Task3_bashrc.sh
```

## How It Works
1. The script first checks for the existence of the `.bashrc` file in the user's home directory.
2. If `.bashrc` exists, it appends the following:
   - An environment variable `HELLO` with the current system's hostname.
   - A local variable `LOCAL` which captures the username of the user executing the script.
3. The script then initiates the opening of a new terminal window.

## Post-execution Behavior
- **In the Existing Terminal**: There will be no immediate changes. The appended variables in `.bashrc` will not be available in the currently running session.
- **In the Newly Opened Terminal**:
  - The `HELLO` variable will be available as it is exported as an environment variable. Its value will be the hostname of the system.
  - The `LOCAL` variable, being a local variable, won't be accessible in the terminal session, as it is not exported. It exists only within the `.bashrc` file.

## Important Notes
- The new variables will only be available in terminal sessions started after the script has run.
- This script assumes the default location of `.bashrc` in the user's home directory.
- The command to open a new terminal may vary depending on the terminal emulator used; it's set to `xfce4-terminal` in this script. if you use Ubuntu set it to `gnome-terminal`.

## Author

- Mahmoud Shams El-Din
