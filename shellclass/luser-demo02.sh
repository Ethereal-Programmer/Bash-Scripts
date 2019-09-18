#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is root or non-root

# Display the UID
echo "Your UID is: ${UID}"

# Display the username
USER_NAME=$(id -un)
echo "Your username is: ${USER_NAME}"

# Check if user has root priveleges
if [[ "${UID}" -eq 0 ]]
then
	echo 'You are root'
else
	echo 'You are not root'
fi
