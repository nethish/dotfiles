#!/bin/zsh

# ========================================================================== #
### TODO
## Set ZSH_THEME to eastwood
## Install vim plugins
## Install youcompleteme
## SSH https://gist.github.com/xirixiz/b6b0c6f4917ce17a90e00f9b60566278
## Change github url - git remote set-url origin git@github.com:nethish/repo.git
## Add zsh plugins plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
## Set zsh theme to eastwood
## ZSH plugins - zoxide, (autojump?), fd, sudo, colorize?

### Makes shell slow if the repo is heavy so ignore status
## git config --add oh-my-zsh.hide-status 1
## git config --add oh-my-zsh.hide-dirty 1

# ========================================================================== #

# oh my zsh

if [ ! -d ~/.oh-my-zsh ]
then
  echo "Installing omz"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
  echo "Installing Vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [[ ! -v ZSH_CUSTOM ]]; then
  # zsh plugins
  ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
  echo "zsh custom: $ZSH_CUSTOM"
  echo "Instaling zsh auto suggestions and syntax highlighting"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting fi

if [ ! -x "$(command -v fzf)" ]; then
  # fzf
  echo "Installing FZF"
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

# tmux - prefix + I to install plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zoxide, a better cd
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

if [ ! -d ~/.sdkman ]; then
  # Install sdkman
  curl -s "https://get.sdkman.io" | bash
  source $HOME/.sdkman/bin/sdkman-init.sh
  sdk install java 17-open
fi

case "$OSTYPE" in
  *darwin*)
    echo "Detected darwin"
    if [ ! -x "$(command -v brew)" ]; then
      echo "Brew installation not detected"
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew install $(cat brew_packages.txt)
    ;;

  *)
    echo "No OSTYPE detected. Defaulting to arch"
    # Install tools
    sudo pacman-mirrors --geoip
    sudo pacman -Syy -y
    sudo pacman -S yay -y
    yay -S tmux gvim xclip ripgrep go fd lazygit diff-so-fancy brave-browser make cmake unzip postgresql
    # If you need google chrome then yay -S google-chrome will install it
  ;;
esac



# Clone repos and plugins
cd ~
mkdir -p repos
cd repos
if [ ! -d ~/repos/dotfiles ]
then
  git clone https://github.com/nethish/dotfiles
fi

if [ ! -d ~/repos/fun ]
then
  git clone https://github.com/nethish/fun
fi

if [ ! -d ~/repos/CP ]
then
  git clone https://github.com/nethish/CP
fi

# dotfiles
# Backup old configs
cd ~

if [ ! -d ~/.old-dotfiles ]; then
  mkdir -p ~/.old-dotfiles
  cp .vimrc .tmux.conf .zshrc .bashrc .gitconfig .ideavimrc ~/.old-dotfiles
fi

cd ~/repos/dotfiles
cp .zshrc .vimrc .bashrc .tmux.conf .ideavimrc ~/ 
cp gitconfig ~/.gitconfig
cd ~

# Use apps to download and extract the application tar. Create a symlink in bin dir
# Use data dir for storing some data. Like postgres data
mkdir -p .local/bin .config data apps


# Git setup
git config --global user.name nethish
git config --global user.email nethish259@gmail.com
git config --global commit.template ~/repos/dotfiles/gitcommittemplate.txt



# Finally chsh
sudo chsh





## Things to check after intallation is complete
# 1. Make sure console font is inconsolata
# 2. echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
#     This is for keychron function keys to work. Change it back to 1 if doesn't work.
# 3. Install the youcompleteme full package. This needs make and cmake to work. 
#     cd ~/.vim/vundle/YouCompleteMe/
#     python3 install.py --all
# 4. Check clipboard copy paste works with vim. 
#     gvim must be install otherwise clipboard integration will not be there. echo has('clipboard')
# 5. ssh-add --apple-use-keychain or ssh-add ~/.ssh/id_rsa to permanently add keys to ssh agent
#     Start the agent with eval $(ssh-agent)


## For Mac
# 1. Install UTM

