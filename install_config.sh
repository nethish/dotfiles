#!/bin/bash

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

if [ -f ~/.oh-my-zsh ]
then
  echo "Installing omz"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# vim
if [ -f ~/.vim/bundle/Vundle.vim ]
then
  echo "Installing Vundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi


# zsh plugins
echo "zsh custom: $ZSH_CUSTOM"
if [ -z $ZSH_CUSTOM ]
then
  echo "Instaling zsh auto suggestions and syntax highlighting"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install tools
sudo pacman -Syy
sudo pacman -S y
yay -S google-chrome tmux vim xclip ripgrep fd git-delta lazygit


# Clone repos and plugins
cd ~
mkdir -p repos
cd repos
if [ -f ~/repos/dotfiles ]
then
  git clone https://github.com/nethish/dotfiles
fi

if [ -f ~/repos/CP ]
then
  git clone https://github.com/nethish/CP
fi

# dotfiles
# Backup old configs
cd ~
mkdir ~/.old-dotfiles
cp .vimrc .tmux.conf .zshrc .bashrc .gitconfig ~/.old-dotfiles

cd ~/repos/dotfiles
cp .zshrc .vimrc .bashrc .tmux.conf .gitconfig ~/ 

# tmux - prefix + I to install plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zoxide, a better cd
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash


# Finally chsh
sudo chsh
