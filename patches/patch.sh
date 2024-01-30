#!/bin/bash

# Get the current commit short hash
current_commit=$(git rev-parse --short HEAD)

# Check if the current commit is equal to "15f2670"
if [ "$current_commit" = "15f2670" ]; then
    echo "Applying patch for commit $current_commit"
    
    # Run the patch command
    patch -Np1 < ../patches/15f267053.patch
    
    # Check if the patch was applied successfully
    if [ $? -eq 0 ]; then
        echo "Patch applied successfully!"
    else
        echo "Error applying patch!"
        exit 1
    fi
else
    echo "Current commit ($current_commit) does not match the target commit (15f2670). Skipping patch."
fi

