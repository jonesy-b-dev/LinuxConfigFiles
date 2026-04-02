# cd related aliases
alias nigger='echo I HATE NIGGERS'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dev='cd ~/dev'
alias devw='cd /windows/BigDrive/dev'
alias conf='cd ~/.config'
alias win='cd /windows'
alias bigd='cd /windows/BigDrive'

# Profiling
alias mem10='ps auxf | sort -nr -k 4 | head -10'
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias df='df -h'

function ebash
    cd ~ && nvim .bashrc
end
 
function ebasha
    cd ~ && nvim .bash_aliases
end
 
function envim
    cd ~/.config/nvim && nvim
end
 
function ei3
    cd ~/.config/i3 && nvim config
end
 
function econf
    cd ~/.config && nvim
end
 
function edisc
    sudo nvim /opt/discord/resources/build_info.json
end

# Whatever
alias vencord='yes | sh -c "$(curl -sS https://vencord.dev/install.sh)"'
alias weather='curl wttr.in'
alias reload-bash='source ~/.bashrc'
alias reload-waybar='pkill waybar && hyprctl dispatch exec waybar'
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"
alias arch-docs="xdg-open file:///usr/share/doc/arch-wiki/html/en/Main_page.html"

# Command extensions
alias pinstall='sudo pacman -S'

#alias rg to grep if rg is installed
if command -v rg &> /dev/null;
	alias grep='rg'
else
	echo 'rg not installed'
	alias grep='grep --color=auto'
end
alias shutdown='shutdown -h now'
alias cp='cp -i'
alias mv='mv -i'

if command -v trash &> /dev/null;
	alias rm='trash -v'
else
	echo 'trash not installed'
end
alias tree='tree -CAhF --dirsfirst'
alias ll='ls -lhFa --color=auto'

# Short commands
alias noc='notecross'
alias start-kali='qemu-system-x86_64 -m 16192 -cpu host -enable-kvm -smp cores=8 -net nic,model=virtio-net-pci,macaddr=de:ad:be:e5:34:56 -net user,id=mynet0,net=192.168.76.0/24,dhcpstart=192.168.76.9 -drive file=~/VirtualMachines/ISO/kali-linux-2025.4-qemu-amd64.qcow2,index=0,media=disk,if=virtio,format=qcow2'
alias ff='fastfetch'

# Git
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gl='git log --oneline -n 10'
alias gb='git checkout -b'
alias gd='git diff'
alias gps='git push'
alias gf='git fetch'
alias gp='git pull'
