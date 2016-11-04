git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc_local
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc_local
echo 'eval "$(pyenv init -)"' >> ~/.bashrc_local
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc_local
exec $SHELL
