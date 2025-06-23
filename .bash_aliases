# cd related aliases
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

# Edit specific things
alias ebash='(cd ~/; nvim .bashrc)'
alias ebasha='(cd ~/; nvim .bash_aliases)'
alias envim='(cd ~/.config/nvim; nvim)'
alias ei3='(cd ~/.config/i3; nvim config)'
alias econf='(cd ~/.config; nvim)'

# Whatever
alias weather='curl wttr.in'
alias reload-bash='source ~/.bashrc'
alias reload-waybar='pkill waybar && hyprctl dispatch exec waybar'
alias yayf="yay -Slq | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"

# Command extensions
alias pinstall='sudo pacman -S'

#alias rg to grep if rg is installed
if command -v rg &> /dev/null; then
	alias grep='rg'
else
	echo 'rg not installed'
	alias grep='grep --color=auto'
fi
alias shutdown='shutdown -h now'
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias tree='tree -CAhF --dirsfirst'
alias ll='ls -lhFa --color=auto'

# Git related aliases
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
