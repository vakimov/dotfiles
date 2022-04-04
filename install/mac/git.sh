
## Install Git

brew install git && brew install bash-completion

# locate xcode utilities
# sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

# Disable notification "file is not ASCII"
defaults write "com.apple.FileMerge" maxNonAscii -int 2147483647

git config --global merge.tool opendiff
git config --global diff.external ~/.dotfiles/bin/opendiff-git.sh
