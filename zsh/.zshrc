# User 256 Colors
export TERM=xterm-256color
export LANG=en_US.UTF8

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
## Import Locations
# export ZSH_ENV_HOME=$HOME/
# export ZSH_CUSTOM=~/.config/zsh/custom/

# Bootstrap Autocompletion
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # Load NVM

############################################
############### PLUGINS ####################
############################################

# Antigen: ZSH Plugin Manager
source ${ZDOTDIR:-~}/antigen/antigen.zsh # Loads depending on where you saved your file

#Load Antigen Config
antigen init ${ZDOTDIR:-~}/antigen/.antigenrc

fpath+={$ZDOTDIR:-~}/functions.zsh

if [[ -r ${ZDOTDIR:-~}/aliases.zsh ]]; then
    . ${ZDOTDIR:-~}/aliases.zsh
fi

eval "$(starship init zsh)"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# HISTORY
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE
export HISTFILE=$HOME/.local/zsh_history
