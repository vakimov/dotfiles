#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR = "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
