
## Install Sublime 3

sudo apt-get install -y apt-transport-https

subl_src=/etc/apt/sources.list.d/sublime-text.list

if [ ! -f $subl_src ]; then
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee $subl_src
    sudo apt-get update
fi

sudo apt-get install -y sublime-text

config_path="sublime-text-3/Packages/User"
mkdir --parents ~/.config/$config_path
cp -f $DOTFILES_DIR/etc/$config_path/* ~/.config/$config_path
