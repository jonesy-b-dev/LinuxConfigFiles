# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/jonesy/.zshrc'


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable completion system
autoload -Uz compinit
compinit

# Set the strategy to default completion
ZSH_AUTOSUGGEST_STRATEGY=(completion)

# Enable autosuggestions highlighting (default behavior)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#a89984"  # Customize color if desired, e.g., "fg=yellow" for yellow

# Make Tab complete the autosuggestion
bindkey "^I" autosuggest-accept

# Check if alias file exists
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Function to dynamically generate the prompt
get_prompt() {
    # Get the current Git branch (if in a Git repo)
    local git_branch=$(git branch 2>/dev/null | grep '*' | sed 's/* //')
    
    # Set the prompt with Git branch dynamically
    PROMPT="[%F{cyan}%*%f]"
    if [[ -n $git_branch ]]; then
        PROMPT+="($git_branch)"
    else
        PROMPT+="()"
    fi
    PROMPT+="%F{green}%n%f:%F{magenta}%~%f\$ "
}

# Hook the function into `precmd` to run before each prompt display
precmd() {
    get_prompt
}
