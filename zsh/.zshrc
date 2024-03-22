# User 256 Colors
export TERM=xterm-256color
export LANG=en_US.UTF8

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
<<<<<<< Updated upstream

if hash nvim 2>/dev/null; then
  export EDITOR=nvim
  export MANPAGER='nvim +Man!'
else
  export EDITOR=vim
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local" ] ; then
  PATH="$HOME/.local:$HOME/.cache/pnpm:$PATH"
fi

export NVM_COMPLETION=true
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
=======
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
>>>>>>> Stashed changes

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
