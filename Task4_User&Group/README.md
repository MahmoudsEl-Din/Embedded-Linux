# Task 4 - User and Group Creation Script

This script automates the process of creating a new user and adding them to a specific group on a Linux system. It checks for the existence of both the user and group before attempting to create them and then displays relevant information.

## Features

- **Check Existence**: Verifies if the user and group already exist.
- **Create User**: If the user doesn't exist, it creates a new user named `yourName`.
- **Create Group**: If the group doesn't exist, it creates a new group named `FamilyName`.
- **Add User to Group**: Adds the user to the group.
- **Display Information**: Shows detailed information about the user and the group after the operations.

## Prerequisites

- A Linux system with Bash.
- Administrative privileges (for user and group management).

## Installation

1. **Download the Script**: Download `create_user_and_group.sh` to your desired directory.
2. **Set Execute Permission**: Make the script executable using the following command:
   ```
   chmod +x create_user_and_group.sh
   ```
## Usage
Run the script with administrative privileges:
   ```
  sudo ./create_user_and_group.sh
   ```
The script will perform the following actions:

- Check if the group FamilyName exists; create it if it doesn't.
- Check if the user yourName exists; create it if it doesn't and add it to FamilyName.
- Display detailed information about the newly created user and group.

## Customization
To use different names for the user and group, edit the create_user_and_group.sh file and change the userName and groupName variables at the top of the script:
   ```
  userName="UserName"
  groupName="GroupName"
   ```
Replace UserName and GroupName with your chosen names.

## Note
This script requires administrative privileges as it involves user and group manipulation on the system.

