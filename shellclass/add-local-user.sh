#!/bin/bash

# This script adds a user to the same system it is executed on

# Ensure the user has root priviliges (exit with 1 otherwise)
if [[ "$(id -u)" != "0" ]]
then
	echo "Please login with root privileges"
	exit 1
fi

# Prompt for the username
read -p 'Please provide a username for the new account: ' USER_NAME

# Prompt for the real name
read -p 'Enter the first and last name of the new user: ' COMMENT

# Prompt for the initial password
read -ps 'Create an intial password for the user' PASSWORD

# Create the user with the input provided
useradd -c "${COMMENT}" -m ${USER_NAME}

# Inform if account was created successfully (otherwise exit 1)
if [[ "${?}" = "0"]]
then
	echo "User was added successfully!"
else
	echo "Error: useradd was not successful"
	exit 1
fi

# Set the User password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Check if the password was set successfully
if [[ "${?}" = "0"]]
then
	echo "Password was set successfully!"
else
	echo "Error: passwd was not successful"
	exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display the username, password, and host for new user
echo
echo 'username: '
echo "${USER_NAME}"
echo
echo 'password: '
echo "${PASSWORD}"
echo
echo 'host: '
echo "${HOSTNAME}"
exit 0
