#!/usr/bin/env bash

# Install zsh plugins.
ZSH_USERS_GIT=git@github.com:zsh-users
ZSH_CONFIG_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins

cloneorpull() {
  if [[ ! -d $ZSH_CONFIG_DIR/$1 ]]; then
    git clone $ZSH_USERS_GIT/$1.git $ZSH_CONFIG_DIR/$1
  else
    cd $ZSH_CONFIG_DIR/$1
    git config pull.rebase false
    git pull
  fi
}

cloneorpull "zsh-syntax-highlighting"
cloneorpull "zsh-autosuggestions"

# Install homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi
