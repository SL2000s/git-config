#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Set the Git global excludes file to the retrieved directory
GIT_EXCLUDES_FILE="$SCRIPT_DIR/gitignore_global"
git config --global core.excludesfile "$GIT_EXCLUDES_FILE"

# Print confirmation message
echo "Git global excludes file set to: $GIT_EXCLUDES_FILE"
