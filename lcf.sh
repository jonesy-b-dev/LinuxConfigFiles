#!/bin/bash

# Installs the config files in the repository to the system
# WARNING this overwrites the current files in the repository.

show_help(){
    echo "Avalible options.."
    echo "To install use option -i and to update the files in the repo use option -u."
    echo "-b    Install bash configs"
    echo "-n    Install nvim configs"
    echo "-h    Show help information"
}

update=false
install=false

install_bash=false
install_nvim=false
update_bash=false
update_nvim=false

# Parse cl option
while getopts "iubnh" opt; do
	case ${opt} in
    u)
        update=true  ;;
    i)
        install=true  ;;
		b) 
        install_bash=true ;;
		n) 
        install_nvim=true ;;
    h) # Show help
        show_help ;;
	esac
done

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
    echo "Bash configs installed, please run [source ~./.bashrc] to complete the setup."
}

# Function to install vim config
install_nvim_config() 
{
    echo "Installing nvim config..."
    cp -r nvim/ ~/.config/
    echo "Installation complete."
}

update_bash_config()
{
  echo "Updating bash configs... "
  echo "Current changes so far since last commit in the repository"
  cp -r ~/.bashrc ~/.bash_aliases ./bash/
  git diff ./bash/
  echo "Updating complete."
}

update_nvim_config()
{
  echo "Updateing nvim configs..."
  cp -r ~/.config/nvim ./
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
}

# Check if we need to install or update and call according funciton
if $install; then
  install_configs
  
else 
  update_configs
fi
