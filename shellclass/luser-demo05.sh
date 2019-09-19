#!/bin/bash

# This script genereates a list of random passwords

# A random number as a password
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

# Three random numbers together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Password using Epic Time %s
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Password using epoch time and nanoseconds
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# Password using epoch time, sha256, and head
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

# A more random password using some random numbers and the previous output.
PASSWORD=$(date +%s%N${RANDOM}${RANDOM}${RANDOM}) | sha256sum | head -c48
echo "${PASSWORD}"

# Append a special character to the password
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-+=)' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
