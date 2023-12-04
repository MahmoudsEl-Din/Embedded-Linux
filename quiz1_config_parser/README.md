# Quiz 1 - Config Parser Script 

![Quiz 1](https://i.imgur.com/mC1stYP.png "Quiz 1")


## Overview
`config_parser.sh` is a bash script designed to parse a configuration file named `config.ini`. This script reads key-value pairs from the file and returns the value for a specified key.

## Features
- Accepts a key as a command-line argument.
- Prints the corresponding value if the key is found in `config.ini`.
- Provides an error message if the key is not present in the configuration file.
- Handles common errors such as incorrect usage or missing `config.ini` file.

## Prerequisites
- Bash environment (Linux, macOS, Git Bash for Windows, WSL, or Cygwin)
- `config.ini` file in the same directory as the script

## Installation
1. Clone or download the script to your local machine.
2. Navigate to the directory containing the script.
3. Make the script executable:
```
   chmod +x config_parser.sh
```

## Usage
Run the script with a key as an argument:
```
./config_parser.sh <key>
```
Replace <key> with the actual key you want to search for in the config.ini file.
- database_url
- username
- password
- debug_mode
  
## Example
```
./config_parser.sh username
```
If username is a key in config.ini, the script will output its corresponding value.

## Error Handling
The script includes error handling for:

- Incorrect number of arguments.
- Missing config.ini file.
- Key not found in the config.ini file.
