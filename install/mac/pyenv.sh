
if [[ ! -d $HOME/.pyenv ]]; then
  git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
fi

if [[ ! -d $HOME/.pyenv/plugins/pyenv-virtualenv ]]; then
  git clone https://github.com/yyuu/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
fi

if [[ ! -d $HOME/.pyenv/plugins/pyenv-update ]]; then
  git clone git://github.com/pyenv/pyenv-update.git $HOME/.pyenv/plugins/pyenv-update
fi
