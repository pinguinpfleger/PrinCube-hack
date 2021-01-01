#!/bin/sh

# copy wifi client conifg
[ -f /root/mb_etc/wpa_client.conf ] && rm /root/mb_etc/wpa_client.conf
mv mbrush-fw/mb_etc/wpa_client.conf /root/mb_etc/wpa_client.conf

# activate wifi_client mode, see /root/mb_etc/S80mb script
[ ! -f /root/mb_conf/wifi_client ] && touch /root/mb_conf/wifi_client

# cp index.html with MOD Title
[ -f /root/mb_ser/index.html ] && rm /root/mb_ser/index.html 
mv mbrush-fw/mb_ser/index.html /root/mb_ser/index.html 

# cp shell.html
[ -f /root/mb_ser/shell.html ] && rm /root/mb_ser/shell.html 
mv mbrush-fw/mb_ser/shell.html /root/mb_ser/shell.html 

# replace S80mb script 
[ -f /root/mb_etc/S80mb ] && rm /root/mb_etc/S80mb
mv mbrush-fw/mb_etc/S80mb /root/mb_etc/S80mb
chmod +x /root/mb_etc/S80mb

rm -rf mbrush-fw

ln -sf /root/mb_etc/S80mb /etc/init.d/S80mb # skip read only filesystem

sync
nohup sh -c "sleep 4 && reboot" > /dev/null &
