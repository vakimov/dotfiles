#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Symlinks

ln -sfv "$DOTFILES_DIR/runcom/bashrc" ~/.bashrc
touch ~/.bashrc_local
ln -sfv "$DOTFILES_DIR/etc/git/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/etc/git/gitignore_global" ~/.gitignore_global


# Install staffs

sudo apt-get install -y wget
. $DOTFILES_DIR/install/git.sh
. $DOTFILES_DIR/install/terminator.sh
. $DOTFILES_DIR/install/pyenv.sh
. $DOTFILES_DIR/install/subl.sh
. $DOTFILES_DIR/install/chrome.sh
. $DOTFILES_DIR/install/dropbox.sh
. $DOTFILES_DIR/install/keepass2.sh
. $DOTFILES_DIR/install/pycharm.sh

