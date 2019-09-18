#!/bin/bash

# This is a beginner level shell script designed to teach basic concepts such as Naming, Permissions, Variables, and Builtins.

# Display the generic "Hello World!" starting project
echo "Hello World!"

# Assign a value to a variable
WORD='script'

# Diplay that value using the variable
echo "$WORD"

# Demonstrate that single quotes cause variables to NOT get expanded
echo '$WORD'

# Combine the variable with some hard-coded text
echo "This is a shell $WORD"

# Display the contents of the variable using an alternavtive syntax.
echo "This is a shell ${WORD}"

# Append text to the variable
echo "${WORD}ing is fun!"

# Demonstrate the incorrect way to append text to a variable
# This does not work:
echo "$WORDing is fun!"

# Create a new variable
ENDING='ed'

# Combine the two variables
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable (Reassignment)
ENDING='ing'
echo "${WORD}${ENDING} is fun!"

# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class!"
