# Task 1 - Embedded Linux

This repository contains a Bash script for performing specific directory and file operations in a Linux environment. The script is designed to create directories, files, and perform file operations as outlined in the task instructions.

## Bash Script

### Script Name: `script.sh`

#### Usage:

1. Clone this repository to your local machine.
2. Make sure the script has execute permissions by running the command: `chmod +x script.sh`.
3. Execute the script from the terminal with: `./script.sh`.

### Script Description:

- Creates a directory called "myDirectory" in your home folder.
- Inside "myDirectory," it creates another directory named "secondDirectory."
- Within "secondDirectory," it creates a file named "myNotePaper."
- Copies "myNotePaper" from "secondDirectory" to "myDirectory."
- Renames the copied file in "myDirectory" to "myOldNotePaper."

## Directory Structure

- `/myDirectory`: The main directory created by the script.
  - `/secondDirectory`: Subdirectory within "myDirectory."
  - `myNotePaper`: File created inside "secondDirectory."
  - `myOldNotePaper`: File created by renaming "myNotePaper" in "myDirectory."

## Author

- Mahmoud Shams El-Din

