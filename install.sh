#!/bin/bash
# This script gets the config files and updates the files in the repo. Like this we can update the files in GitHub
# WARNING this overwrites the current files in the repository.


# Copy bash files
cp bash/.bashrc bash/.bash_aliases ~/

# Copy nvim fies
cp -r nvim/ ~/.config/
