#!#!/bin/bash

# Set the destination folder where you want to create symlinks
destination_folder="$HOME/.config/nvim/lua/custom"

# Check if the destination folder exists
if [ ! -d "$destination_folder" ]; then
  echo "INFO: can't find lua/custom folder, creating one"
  mkdir "$HOME/.config/nvim/lua/custom"
  echo "INFO: folder created"
fi

# Ensure the destination folder exists
mkdir -p "$destination_folder"

script_file="$(basename "$0")"

# Loop through all files and directories in the current folder
for item in *; do
    # Check if the item is not the script file and create a symlink
    if [ "$item" != "$script_file" ]; then
        # Create a symlink in the destination folder
        ln -s "$PWD/$item" "$destination_folder/$item"
        echo "Symlink created for $item"
    fi
done

echo "Symlinks creation complete!"
