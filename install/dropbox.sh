
## Install Dropbox
# https://www.dropbox.com/install?os=lnx

sudo apt-get install -y python-gpgme

PKG_OK=$(dpkg-query -W -f='${Status}' dropbox 2>/dev/null | grep -c "ok installed")
if [ $PKG_OK -eq 0 ]; then
    wget -O /tmp/dropbox_amd64.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
    sudo gdebi /tmp/dropbox_amd64.deb
    rm /tmp/dropbox_amd64.deb
fi
