#!/bin/bash
# This script gets the config files and updates the files in the repo. Like this we can update the files in GitHub
# WARNING this overwrites the current files in the repository.

show 
repoDir=$(pwd)

# Copy bash files
cp ~/.bashrc ~/.bash_aliases $repoDir/bash/

# Copy nvim fies
cp -r ~/.config/nvim $repoDir/
