#!/bin/bash

# Variables
userName="yourName"
# userName="Mahmoud"
groupName="FamilyName"
# groupName="Shams"

# First check if the group exists or not
if getent group $groupName > /dev/null; then
    echo "Group '$groupName' already exists."
else
    # Then create the group if it doesn't exist
    groupadd $groupName && echo "Group '$groupName' created."
    sleep 1 # delay to ensure system updates
    if ! getent group $groupName > /dev/null; then
        echo "Failed to create group '$groupName'. Exiting."
        exit 1
    fi
fi

# Also check if the user exists
if id -u $userName > /dev/null 2>&1; then
    echo "User '$userName' already exists."
else
    # then create the user if it doesn't exist and add to group
    if useradd -m -g $groupName $userName; then
        echo "User '$userName' created and added to '$groupName'."
    else
        echo "Failed to create user '$userName'."
        exit 1
    fi
fi

# Display user and group information
if id $userName > /dev/null 2>&1; then
    echo "User Information:"
    id $userName
else
    echo "User '$userName' does not exist."
fi

echo "Group Information:"
getent group $groupName
