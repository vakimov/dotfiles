
if [[ "$(lsb_release -cs)" == "juno" ]]; then
    # Elementary OS juno

    sudo add-apt-repository \
    "deb [arch=amd64] \
    https://download.docker.com/linux/ubuntu \
    bionic stable"

    apt install docker-ce

    sudo groupadd docker
    sudo usermod -aG docker $USER

    sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
fi
