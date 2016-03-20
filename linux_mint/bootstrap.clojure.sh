
## Install Leiningen project manager
# sudo apt-get install leiningen # wrong version < 2.
wget -O /tmp/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chown root:root /tmp/lein
sudo chmod a+x /tmp/lein
sudo mv /tmp/lein /usr/local/bin/

