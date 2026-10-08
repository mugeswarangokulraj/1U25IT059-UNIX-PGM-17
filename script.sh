#!/bin/bash

# Check if username is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a username."
    exit 1
fi

# Store the username
username="$1"

# Set password expiry settings
chage -d 2025-01-01 "$username"
chage -E 2026-12-31 "$username"
chage -m 7 "$username"
chage -M 90 "$username"

echo "Password expiry settings updated for $username."
