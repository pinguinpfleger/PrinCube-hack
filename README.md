# PrinCube-hack

mods, improvements, hacks for the PrinCube based on APP 4.36, FW 4.17 released 30 Dec 2021
https://github.com/dukelec/mb/releases/tag/4.36_4.17
https://github.com/dukelec/mb

## Added so far:

wifi client mode
simple html shell

## playing as root with webshell without firmware modification

Connect PrinCube with USB to your PC.
Open shell.html in your browser and start hacking. maybe start with typing: `whoami`
shell.html uses the usb ip (192.168.88.1) by default

## Install:

this will enable wifi client mode by default
and add a html webshell with root rights under /shell.html

1. Download this FW Mod
2. Edit mb_etc/wpa_client.conf to your needs
3. Create firmware tar file (on Windows use 7-zip, built-in tar does not set execute bit on run.sh correct)

```
tar cf princube-hack.tar mbrush-fw/
```

4. Zpload and install with webinterface
   When connected via USB is has the IP 192.168.88.1
   http://192.168.88.1/

## switch between client and ap mode

Disable wifi client mode and enable ap mode

```
rm /root/mb_conf/wifi_client  && reboot
```

Enable wifi client mode and disable ap mode

```
touch /root/mb_conf/wifi_client && reboot
```

To check which Wifi IP Address PrinCube got

```
ip a
```

## TODO:

security!!! user roles (admin and user)  
ntpdate  
wifi ap fallback when wpa client mode fails  
wifi config webinterface  
dropbear?  
webui improvments  
...

Contributions are welcome :-)

## usefull Links

https://blog.d-l.io/mb-faq

## compatible cartriges

https://github.com/dukelec/mb/issues/12
