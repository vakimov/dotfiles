
## Install Sublime 3

subl_ppa="webupd8team/sublime-text-3"

if ! grep -q "$subl_ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository ppa:$subl_ppa
    sudo apt-get update
fi

sudo apt-get install -y sublime-text-installer

config_path="sublime-text-3/Packages/User"
mkdir --parents ~/.config/$config_path
cp -f $DOTFILES_DIR/etc/$config_path/* ~/.config/$config_path
