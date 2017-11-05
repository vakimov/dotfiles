
# Create zip settings

cd $DOTFILES_DIR/etc/pycharm/settings
zip -r ../settings.jar *

# Set Russian locale

echo -n "Enter pycharm path and press [ENTER]: "
read PYCHARM_PATH
echo

read -r -d '' LOCALE <<- EOM
-Duser.country=RU
-Duser.language=ru
EOM

echo "$LOCALE" >> "$PYCHARM_PATH"/bin/pycharm.vmoptions
echo "$LOCALE" >> "$PYCHARM_PATH"/bin/pycharm64.vmoptions
