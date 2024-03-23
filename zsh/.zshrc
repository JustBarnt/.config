# User 256 Colors
export TERM=xterm-256color
export LANG=en_US.UTF8

export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Bootstrap Autocompletion
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # Load NVM

############################################
############### PLUGINS ####################
############################################

# Antigen: ZSH Plugin Manager
source ${ADOTDIR:-~}/antigen.zsh # Loads depending on where you saved your file

#Load Antigen Config
antigen init ${ADOTDIR:-~}/.antigenrc

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
