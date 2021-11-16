#!/bin/bash

### TODO
## Set ZSH_THEME to eastwood
## Install vim plugins
## Install youcompleteme
## SSH https://gist.github.com/xirixiz/b6b0c6f4917ce17a90e00f9b60566278
## Change github url - git remote set-url origin git@github.com:nethish/repo.git
## Add zsh plugins plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
## Set zsh theme to eastwood


# oh my zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

# zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install tools
sudo pacman -Syy
sudo pacman -S y
yay -S google-chrome
yay -S tmux
yay -S gvim
yay -S xclip


# Clone repos and plugins
cd ~
mkdir -p repos
cd repos
git clone https://github.com/nethish/dotfiles
git clone https://github.com/nethish/CP
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# dotfiles
# Backup old configs
cd ~
mkdir ~/.old-dotfiles
cp .vimrc .tmux.conf .zshrc .bashrc .gitconfig ~/.old-dotfiles

cd ~/repos/dotfiles
cp .zshrc .vimrc .bashrc .tmux.conf .gitconfig ~/ 




# Finally chsh
sudo chsh
