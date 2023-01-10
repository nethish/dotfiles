#!/bin/bash

# Copy dotfiles from home dir to repo

if [[ -f ~/.vimrc ]]; then 
  cp ~/.vimrc .
fi

if [[ -f ~/.tmux.conf ]]; then 
  cp ~/.tmux.conf .
fi

if [[ -f ~/.bashrc ]]; then 
  cp ~/.bashrc .
fi

if [[ -f ~/.zshrc ]]; then 
  cp ~/.zshrc .
fi

if [[ -f ~/.gitconfig ]]; then 
  cp ~/.gitconfig .
fi

if [[ -f ~/.localrc ]]; then 
  cp ~/.localrc .
fi

if [[ -f ~/.ideavimrc ]]; then 
  cp ~/.ideavimrc .
fi

if [[ -f ~/.config/lazygit/config.yml ]]; then 
  cp ~/.config/lazygit/config.yml lazygit_config.yml
fi

