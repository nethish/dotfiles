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

# zsh plugins
ZSH_CUSTOM="/home/$USER/.oh-my-zsh/custom"
echo "zsh custom: $ZSH_CUSTOM"
if [ -v ZSH_CUSTOM ]
then
  echo "Instaling zsh auto suggestions and syntax highlighting"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# tmux - prefix + I to install plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# zoxide, a better cd
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# Install tools
sudo pacman-mirrors --geoip
sudo pacman -Syy -y
sudo pacman -S yay -y
yay -S tmux gvim xclip ripgrep go fd lazygit diff-so-fancy brave-browser make cmake unzip postgresql
# If you need google chrome then yay -S google-chrome will install it


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
mkdir -p ~/.old-dotfiles
cp .vimrc .tmux.conf .zshrc .bashrc .gitconfig .ideavimrc ~/.old-dotfiles

cd ~/repos/dotfiles
cp .zshrc .vimrc .bashrc .tmux.conf .gitconfig .ideavimrc ~/ 


cd ~
# Use apps to download and extract the application tar. Create a symlink in bin dir
# Use data dir for storing some data. Like postgres data
mkdir bin data apps

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
