# cd related aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dev='cd ~/dev'
alias conf='cd ~/.config'

# Profiling
alias mem10='ps auxf | sort -nr -k 4 | head -10'
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias df='df -h'
alias ll='ls -lhFa --color=auto'

# Edit specific things
alias ebash='(cd ~/; nvim .bashrc)'
alias ebasha='(cd ~/; nvim .bash_aliases)'
alias envim='(cd ~/.config/nvim; nvim)'
alias ei3='(cd ~/.config/i3; nvim config)'

# Whatever
alias weather='curl wttr.in'
alias reload='source ~/.bashrc'

# Command extensions
alias pinstall='sudo pacman -S'
alias grep='grep --color=auto'
alias shutdown='shutdown -h now'

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
