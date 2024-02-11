#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

#check if alias file exists
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)'; PS1='[\[\e[38;5;208m\]\A\[\e[0m\]](${PS1_CMD1})\[\e[32m\]\u\[\e[0m\]:\[\e[38;5;126m\]\w\[\e[0m\]\\$ '

