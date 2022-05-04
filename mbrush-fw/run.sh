#!/bin/sh

# copy wifi client conifg
[ -f /root/mb_etc/wpa_client.conf ] && rm /root/mb_etc/wpa_client.conf
mv mbrush-fw/mb_etc/wpa_client.conf /root/mb_etc/wpa_client.conf

# activate wifi_client mode, see /root/mb_etc/S80mb script
[ ! -f /root/mb_conf/wifi_client ] && touch /root/mb_conf/wifi_client

# cp index.html.gz with MOD Title
[ -f /root/mb_ser/index.html.gz ] && rm /root/mb_ser/index.html.gz 
mv mbrush-fw/mb_ser/index.html.gz /root/mb_ser/index.html.gz 

# cp shell.html.gz
[ -f /root/mb_ser/shell.html.gz ] && rm /root/mb_ser/shell.html.gz 
mv mbrush-fw/mb_ser/shell.html.gz /root/mb_ser/shell.html.gz 

# cp jquery.terminal.min.css.gz
[ -f /root/mb_ser/jquery.terminal.min.css.gz ] && rm /root/mb_ser/jquery.terminal.min.css.gz
mv mbrush-fw/mb_ser/jquery.terminal.min.css.gz /root/mb_ser/jquery.terminal.min.css.gz

# cp jquery.terminal.min.js.gz
[ -f /root/mb_ser/jquery.terminal.min.js.gz ] && rm /root/mb_ser/jquery.terminal.min.js.gz
mv mbrush-fw/mb_ser/jquery.terminal.min.js.gz /root/mb_ser/jquery.terminal.min.js.gz

# cp jquery-3.3.1.min.js.gz
[ -f /root/mb_ser/jquery-3.3.1.min.js.gz ] && rm /root/mb_ser/jquery-3.3.1.min.js.gz
mv mbrush-fw/mb_ser/jquery-3.3.1.min.js.gz /root/mb_ser/jquery-3.3.1.min.js.gz

# replace S80mb script 
[ -f /root/mb_etc/S80mb ] && rm /root/mb_etc/S80mb
mv mbrush-fw/mb_etc/S80mb /root/mb_etc/S80mb
chmod +x /root/mb_etc/S80mb

rm -rf mbrush-fw

ln -sf /root/mb_etc/S80mb /etc/init.d/S80mb # skip read only filesystem

sync
nohup sh -c "sleep 4 && reboot" > /dev/null &
