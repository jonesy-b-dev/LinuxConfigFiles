#!/bin/bash

# Installs the config files in the repository to the system
# WARNING this overwrites the current files in the repository.

show_help(){
    echo "Avalible options.."
    echo "To install use option -i and to update the files in the repo use option -u."
    echo "-b    Install bash configs"
    echo "-v    Install nvim configs"
    echo "-h    Show help information"
}

update=false
install=false

install_bash=false
install_nvim=false
update_bash=false
update_nvim=false

# Parse cl option
while getopts "iubvh" opt; do
	case ${opt} in
    u)
        update=true  ;;
    i)
        install=true  ;;
		b) 
        install_bash=true ;;
		v) 
        install_nvim=true ;;
    h) # Show help
        show_help ;;
	esac
done

echo update $update
echo install $install
echo in nvim $install_nvim
echo in bash $install_bash

# If no options provided, exit the progra
if [[ $# -eq 0 ]]; then
  echo "Please provide an option, run ./install.sh -h to see all avalble options."
  read -p "Press enter to continue..."
  exit 1
fi

if [[($install == true && $update == true) || ( $install == false && $update == false) ]]; then
  echo "You must either provide the -i or -u option, not both of neither."
  read -p "Press enter to continue..."
  exit 1
fi 

# Function to install bash config
install_bash_config() 
{
    echo "Installing bash config..."
    cp bash/.bashrc bash/.bash_aliases ~/
    # Add commands to install bash config files here
}

# Function to install vim config
install_nvim_config() 
{
    echo "Installing nvim config..."
    cp -r nvim/ ~/.config/
    echo "Bah configs installed, please run [source ~./bashrc] to complete the setup."
    # Add commands to install vim config files here
}

update_bash_config()
{
  echo "Updating bash configs... "
  cp ~/.bashrc ~/.bash_aliases ./bash/
  echo "Updating complete."
}

update_nvim_config()
{
  echo "Updateing nvim configs..."
  cp -r ~/.config/nvim ./nvim
  echo "Updating complete."
}

# Main installation function
install_configs() 
{
    if $install_bash; then
        install_bash_config
    fi

    if $install_nvim; then
        install_nvim_config
    fi

    # Add more config installation functions here as needed
}

update_configs()
{
    echo "Updating configs..."
    if $install_bash; then
        update_bash_config
    fi

    if $install_nvim; then
        update_nvim_config
    fi

    # Add more config installation functions here as needed
}

# Check if we need to install or update and call according funciton
if $install; then
  install_configs
  
else 
  update_configs
fi
