#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform

    echo "Mac OS X detected"

    # Symlinks

    ln -sfv "$DOTFILES_DIR/runcom/bash_profile" ~/.bash_profile

    # Speed up key repeating
    defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
    defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

    . $DOTFILES_DIR/install/mac/subl.sh


elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform

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
    . $DOTFILES_DIR/install/trash-cli.sh
    . $DOTFILES_DIR/install/cinnamon/countdown.sh
    sudo apt-get autoremove -y

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    echo "Win32 does not supported"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    echo "Win32 does not supported"
fi