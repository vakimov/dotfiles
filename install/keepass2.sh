
## Install KeePass2

keepass_ppa="jtaylor/keepass"

if ! grep -q "$keepass_ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository ppa:$keepass_ppa
    sudo apt-get update
fi

sudo apt-get install -y keepass2

#https://github.com/pfn/keepasshttp#non-windows--manual-windows-installation
sudo apt-get install -y mono-complete
sudo apt-get install -y libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil
wget -P/tmp https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
sudo chmod 644 /tmp/KeePassHttp.plgx
sudo mv /tmp/KeePassHttp.plgx /usr/lib/keepass2/
