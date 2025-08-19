#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#check if alias file exists
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Expand history size
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T" # Add timestamp

# Causes bash to append to hitory instead of overwriting it
shopt -s histappend
PROMPT_COMMAND='history -a'

# Ignore case on auto-complete
if [[ $iatest -gt 0 ]]; then bind "set completion-ignore-case on"; fi #TODO look into this

PS1='[\[\e[1;33m\]\A\[\e[0m\]]($(git branch 2>/dev/null | rg "^\*" | colrm 1 2))\[\e[32m\]\u\[\e[0m\]:\[\e[0;35m\]\w\[\e[0m\]\\$ '

# Default editor
export EDITOR=nvim
export VISUAL=nvim

# Color man pages TODO also fix this
export LESS='-R'
export PAGER=less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Rust thingy
. "$HOME/.cargo/env"
