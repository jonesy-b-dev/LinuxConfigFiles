# cd related aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dev='cd ~/dev'

# Profiling
alias mem10='ps auxf | sort -nr -k 4 | head -10'
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias df='df -h'
alias ll='ls -lhFa --color=auto'
alias ll='ls -lhFa --color=auto'

# Edit specific things
alias ebash='(cd ~/; nvim .bashrc)'
alias ebasha='(cd ~/; nvim .bash_aliases)'
alias envim='(cd ~/.config/nvim; nvim)'

# Whatever
alias weather='curl wttr.in'
alias reload='source ~/.bashrc'

# Git related aliases
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='git push'