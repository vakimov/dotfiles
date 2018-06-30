#!/usr/bin/env bash

config_path=Library/Application\ Support/Sublime\ Text\ 3
package_user_path=Packages/User
rsync -r "$DOTFILES_DIR/etc/sublime-text-3/$package_user_path/" \
  "$HOME/$config_path/$package_user_path/"
