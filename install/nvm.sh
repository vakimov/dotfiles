
if [ ! -d "$HOME/.nvm" ]; then
  git clone https://github.com/creationix/nvm.git $HOME/.nvm
  cd $HOME/.nvm && git checkout v0.34.0
else
  cd $HOME/.nvm && git fetch --tags && git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
fi
