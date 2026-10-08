#!/bin/bash

# Check if username is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a username."
    exit 1
fi

# Store the username
username="$1"

# Set last password change date
chage -d 2025-01-01 "$username"

# Set account expiration date
chage -E 2026-12-31 "$username"

# Set minimum password age to 7 days
chage -m 7 "$username"

# Set maximum password age to 90 days
chage -M 90 "$username"

# Display success message
echo "Password expiry settings updated for $username."
