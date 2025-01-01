#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Define the Git excludes file and the symlink in the home directory
GIT_EXCLUDES_FILE="$SCRIPT_DIR/.gitignore_global"
SYMLINK_PATH="$HOME/.gitignore_global"

# Create a symlink to the Git excludes file in the home directory
ln -sf "$GIT_EXCLUDES_FILE" "$SYMLINK_PATH"

# Set the Git global excludes file to the symlink in the home directory
git config --global core.excludesfile "$SYMLINK_PATH"

# Print confirmation messages
echo "Symlink created: $SYMLINK_PATH -> $GIT_EXCLUDES_FILE"
echo "Git global excludes file set to: $SYMLINK_PATH"
