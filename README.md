
# WSL // Linux Setup
---

## Setup

### Installation
```zsh
# check for updates
sudo apt update && sudo apt upgrade
sudo apt install zsh

# Sets zsh as the startup shell
chsh -s /bin/zsh [your-username]

# Create .zshenv to ~/
curl -L https://gist.githubusercontent.com/JustBarnt/1a57cd8cf20172425deef48d6f1a1f12/raw/23c946dc80922c2dda0b104be017243a35477009/.zshenv -o ~/.zshenv

# Create .zprofile to ~/
curl -L https://gist.githubusercontent.com/JustBarnt/6da80a4fb8b76919c38fc27da8381667/raw/b08eb791012db5f20930ba436b3e64f82d9baef5/.zprofile -o ~/.zprofile

# Clones to .config folder in your home dir
git clone https://github.com/justbarnt/.config/ ~/.temp-config
mv .temp-config/* ~/.config

# Download git credential-manager
sudo apt install -y dotnet-sdk-7.0
git credential-manager configure
# follow steps for your prefered configuration
```
---
### Requirements
#### `zsh` Specifics
1. [Antigen](https://github.com/zsh-users/antigen) - A plugin manager for `zsh`, think `vundle` for `vim`
    - This goes into `.config/zsh/antigen`
---
#### Shell / Dev Specifics
1. [homebrew](https://github.com/Homebrew/brew)
    - Follow steps for setting up
    ```zsh
    # after installing run
    # this appends homebrew into our env vars
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
    ```
2. [oh-my-posh](https://ohmyposh.dev/docs/installation/linux)
    - Follow steps for setting up
    ```zsh
    # after installing run
    # this appends homebrew into our env vars
    echo 'eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/tokyonight_storm.omp.json)"'
    ```
---
#### Editor
1. [Neovim](https://neovim.io)
    - Recommened to build from nightly, but latest stable version is fine

##### Other Deps
1. NVM (Node version manager includes node and npm)
2. pnpm
3. fd
4. ripgrep
5. git
6. lazygit

