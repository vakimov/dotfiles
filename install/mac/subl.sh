#!/usr/bin/env bash

config_path="Library/Application\ Support/Sublime\ Text\ 3"
package_user_path="Packages/User"
cp "$DOTFILES_DIR/etc/sublime-text-3/$package_user_path/insert_datetime.py" \
  "$HOME/$config_path/$package_user_path/"
