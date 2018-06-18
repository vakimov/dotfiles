git clone https://github.com/linuxmint/cinnamon-spices-applets.git /tmp/cinnamon-spices-applets
cp -r /tmp/cinnamon-spices-applets/cinnamon-timer@jake1164/files/cinnamon-timer@jake1164 $HOME/.local/share/cinnamon/applets
applet_js_file=$HOME/.local/share/cinnamon/applets/cinnamon-timer@jake1164/2.6/applet.js
sed -n 'H;${x;s/^\n//;s/    20 \* 60,.*$/    25 \* 60,\n&/;p;}' $applet_js_file > $applet_js_file~
rm $applet_js_file && mv $applet_js_file~ $applet_js_file
rm -rf /tmp/cinnamon-spices-applets