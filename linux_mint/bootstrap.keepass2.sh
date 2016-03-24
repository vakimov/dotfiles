
## Install KeePass2
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2

#https://github.com/pfn/keepasshttp#non-windows--manual-windows-installation
sudo apt-get install mono-complete
sudo apt-get install libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil
wget -P/tmp https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
sudo chmod 644 /tmp/KeePassHttp.plgx
sudo mv /tmp/KeePassHttp.plgx /usr/lib/keepass2/
