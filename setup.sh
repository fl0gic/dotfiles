#!/usr/bin/env bash

# Install zsh plugins.
ZSH_CONFIG_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git $ZSH_CONFIG_DIR/plugins/zsh-syntax-highlighting || (cd $ZSH_CONFIG_DIR/plugins/zsh-syntax-highlighting ; git pull)
git clone git@github.com:zsh-users/zsh-autosuggestions.git $ZSH_CONFIG_DIR/plugins/zsh-autosuggestions || (cd $ZSH_CONFIG_DIR/plugins/zsh-autosuggestions ; git pull)

# Install homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi
