## Install matroska tool
# https://mkvtoolnix.download/downloads.html
wget -q -O - https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt | sudo apt-key add -
sudo apt-get update
sudo apt-get install mkvtoolnix mkvtoolnix-gui

## Install ffmpeg
# http://compizomania.blogspot.com/2014/05/ffmpeg-ubuntu-1404.html
sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install ffmpeg 
