
if [ ! -d "$HOME/.nvm" ]; then
  git clone https://github.com/creationix/nvm.git $HOME/.nvm
  cd $HOME/.nvm && git checkout v0.33.11
fi
