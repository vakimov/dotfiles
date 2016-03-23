#if [[ $UID != 0 ]]; then
#    echo "Please run this script with sudo:"
#    echo "sudo $0 $*"
#    exit 1
#fi

## Setup Syncthing https://apt.syncthing.net/

# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "release" channel to your APT sources:
echo "deb http://apt.syncthing.net/ syncthing release" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing

# Startup for user
# https://github.com/syncthing/syncthing/tree/master/etc/linux-upstart

# Not working for --user Session Job
#mkdir -p ~/.config/upstart/
#ln -s /home/vakimov/dotfiles/linux_mint/syncthing/syncthing.conf ~/.config/upstart/

sudo ln -s /home/vakimov/dotfiles/linux_mint/syncthing/syncthing.conf /etc/init/
sudo initctl reload-configuration
sudo initctl start syncthing

# Not for linux mint with upstart (not systemd)
# https://docs.syncthing.net/users/autostart.html#how-to-set-up-a-user-service
#mkdir -p ~/.config/systemd/user/
#sudo ln -s /home/vakimov/dotfiles/linux_mint/syncthing/syncthing.service ~/.config/systemd/user/syncthing.service
#systemctl --user enable syncthing.service
#systemctl --user start syncthing.service

