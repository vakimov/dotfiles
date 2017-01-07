
## Install Google Chrome
# http://www.infoworld.com/article/2695753/install-google-s-chrome-browser-in-linux-mint-17.html

PKG_OK=$(dpkg-query -W -f='${Status}' google-chrome-stable 2>/dev/null | grep -c "ok installed")
if [ $PKG_OK -eq 0 ]; then
    wget -P/tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo gdebi /tmp/google-chrome-stable_current_amd64.deb
    rm /tmp/google-chrome-stable_current_amd64.deb
fi