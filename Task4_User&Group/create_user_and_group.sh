#!/bin/bash

# Variables
userName="yourName"
# userName="Mahmoud"
groupName="FamilyName"
# groupName="Shams El-Din"

# Check first if the group exists or not
if getent group $groupName > /dev/null; then
    echo "Group '$groupName' already exists."
else
    # Then create the group if it doesn't exist
    groupadd $groupName
    echo "Group '$groupName' created."
fi

# Also check if the user exists
if id -u $userName > /dev/null 2>&1; then
    echo "User '$userName' already exists."
else
    # if not create the user if it doesn't exist and add to group
    useradd -m -g $groupName $userName
    echo "User '$userName' created and added to '$groupName'."
fi

# Display user and group information
echo "User Information:"
id $userName
echo "Group Information:"
getent group $groupName
