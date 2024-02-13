#!/bin/bash

# Installs the config files in the repository to the system
# WARNING this overwrites the current files in the repository.

install_bash=false
install_nvim=false

# Parse cl option
while getopts "bv" opt; do
	case ${opt} in
		b) 
        install_bash=true ;;
		v) 
        install_nvim=true ;;
	esac
done

# If no options provided, perform full install
if [[ $# -eq 0 ]]; then
    install_bash=true
    install_nvim=true
fi

# Function to install bash config
install_bash_config() {
    echo "Installing bash config..."
    cp bash/.bashrc bash/.bash_aliases ~/
    # Add commands to install bash config files here
}

# Function to install vim config
install_nvim_config() {
    echo "Installing nvim config..."
    cp -r nvim/ ~/.config/
    echo "Bah configs installed, please run [source ~./bashrc] to complete the setup."
    # Add commands to install vim config files here
}

# Main installation function
install_configs() {
    if $install_bash; then
        install_bash_config
    fi

    if $install_nvim; then
        install_nvim_config
    fi

    # Add more config installation functions here as needed
}


# Execute installation
install_configs