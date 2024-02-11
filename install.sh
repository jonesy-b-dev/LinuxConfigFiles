#!/bin/bash
# Installs the config files in the repository to the system
# WARNING this overwrites the current files in the repository.


# Copy bash files
cp bash/.bashrc bash/.bash_aliases ~/

# Copy nvim fies
cp -r nvim/ ~/.config/
