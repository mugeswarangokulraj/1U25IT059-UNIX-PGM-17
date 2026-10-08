#!/bin/bash

# Check that a username was supplied
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME="$1"

# Configure password-aging settings
chage -d 2025-01-01 "$USERNAME" || exit 1
chage -E 2026-12-31 "$USERNAME" || exit 1
chage -m 7 "$USERNAME" || exit 1
chage -M 90 "$USERNAME" || exit 1

# Display the configured settings
chage -l "$USERNAME"
