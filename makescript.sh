#!/bin/bash

# Take user input to get the name of the script
read -p "Please enter a name for your new script: " SCRIPT_NAME

# Create the script using the name input by the user
touch ${SCRIPT_NAME}

# Make the script executable with 755 Permissions
chmod 755 ${SCRIPT_NAME}

# Append the shebang to the script
echo "#!/bin/bash" >> ${SCRIPT_NAME}
