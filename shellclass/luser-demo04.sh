#!/bin/bash

# This script creates an account on the local system
# You will be propted for the account name and password

# Ask for the username
read -p 'Enter the username to create: ' USER_NAME

# Ask for the real name of the user
read -p 'Enter the name of the person this account is for: ' COMMENT

# Ask for the password
read -p 'Enter the password to use for the account: ' PASSWORD

# Create the user
useradd -c "${COMMENT}" -m ${USER_NAME}

# Set a password for the user
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Force password change on first login
passwd -e ${USER_NAME}
