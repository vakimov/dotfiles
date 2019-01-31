#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function _add_base_config {
    _BASE_CONFIG_PATH=$1
    _CONFIG_PATH=$2
    _CONFIG_FILENAME=$(basename ${_CONFIG_PATH})
    _BASE_CONFIG_FILENAME=${_CONFIG_FILENAME}_base
    _BASE_INCLUDE_SCRIPT=$3

    ln -sfv "${_BASE_CONFIG_PATH}" ${_CONFIG_PATH}_base

    if [[ ! -f ${_CONFIG_PATH} ]]; then
        touch ${_CONFIG_PATH}
    fi
    if ! grep -F "${_CONFIG_FILENAME}_base" ${_CONFIG_PATH}; then
        echo -e "${_BASE_INCLUDE_SCRIPT//__BASE__/${_BASE_CONFIG_FILENAME}}\n$(cat ${_CONFIG_PATH})" > ${_CONFIG_PATH}
    fi
}

function try_add_base_bash_config {

    _add_base_config "$DOTFILES_DIR/runcom/$1" "$HOME/.$1" "if [[ -f \$HOME/__BASE__ ]]; then
    source \$HOME/__BASE__
fi"

}

function try_add_git_config {

    _add_base_config "$DOTFILES_DIR/etc/git/gitconfig" "$HOME/.gitconfig" "[include]
  path = __BASE__"

}

if [[ $(uname) == "Darwin" ]]; then
    # Do something under Mac OS X platform

    echo "Mac OS X detected"

    try_add_base_bash_config bash_profile

    try_add_git_config


    # Symlinks

    ln -sfv "$DOTFILES_DIR/etc/git/gitignore_mac_global" $HOME/.gitignore_global


    # Speed up key repeating

    defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
    defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

    . $DOTFILES_DIR/install/mac/git.sh
    . $DOTFILES_DIR/install/mac/subl.sh
    . $DOTFILES_DIR/install/mac/pyenv.sh
    . $DOTFILES_DIR/install/nvm.sh
    . $DOTFILES_DIR/install/go.sh


elif [[ $(expr substr $(uname -s) 1 5) == "Linux" ]]; then
    # Do something under GNU/Linux platform

    echo "Linux detected"

    try_add_base_bash_config bashrc

    try_add_git_config


    # Symlinks

    ln -sfv "$DOTFILES_DIR/etc/git/gitignore_global" $HOME/.gitignore_global


    # Install staffs

    sudo apt-get install -y wget
    . $DOTFILES_DIR/install/git.sh
    . $DOTFILES_DIR/install/terminator.sh
    . $DOTFILES_DIR/install/pyenv.sh
    . $DOTFILES_DIR/install/nvm.sh
    . $DOTFILES_DIR/install/subl.sh
    . $DOTFILES_DIR/install/chrome.sh
    . $DOTFILES_DIR/install/dropbox.sh
    . $DOTFILES_DIR/install/keepass2.sh
    . $DOTFILES_DIR/install/pycharm.sh
    . $DOTFILES_DIR/install/trashcli.sh
    . $DOTFILES_DIR/install/cinnamon/countdown.sh
    sudo apt-get autoremove -y

elif [[ $(expr substr $(uname -s) 1 10) == "MINGW32_NT" ]]; then
    # Do something under 32 bits Windows NT platform
    echo "Win32 does not supported"
elif [[ $(expr substr $(uname -s) 1 10) == "MINGW64_NT" ]]; then
    # Do something under 64 bits Windows NT platform
    echo "Win32 does not supported"
fi