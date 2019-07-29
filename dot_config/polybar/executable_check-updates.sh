#!/bin/sh
# List all updates available from Yay (includes AUR)

# Get list and count of updates
if ! updates=$(yay -Qum 2> /dev/null | wc -l); then
    updates=0
fi

# Print the available updates if more than 0
if [ "$updates" -gt 0 ]; then
    echo "  $updates"
else
    echo ""
fi
