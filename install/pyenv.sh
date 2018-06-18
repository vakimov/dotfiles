
if [ ! -d ~/.pyenv ]; then
  git clone https://github.com/yyuu/pyenv.git ~/.pyenv
fi

if [ ! -d ~/.pyenv/plugins/pyenv-virtualenv ]; then
  git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv  
fi

if [ ! -d ~/.pyenv/plugins/pyenv-update ]; then
  git clone git://github.com/pyenv/pyenv-update.git ~/.pyenv/plugins/pyenv-update
fi


# Fix common build problems

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils
