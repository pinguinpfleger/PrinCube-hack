# PrinCube-hack

mods, improvements, hacks for the PrinCube based on PrinCube-fw-4.33_4.16
https://github.com/dukelec/mb/releases/tag/4.33_4.16
https://github.com/dukelec/mb

## Added so far:
wifi client mode
simple html shell

## playing as root with webshell without firmware modification
shell.html uses the usb ip by default


## Install:

this will enable wifi client mode by default
and add a html webshell with root rights under /shell.html

1. Download this FW Mod
2. Edit mb_etc/wpa_client.conf to your needs
3. create firmware tar file (on Windows use 7-zip, built-in tar does not set execute bit on run.sh correct)
```
tar cf princube-fw-mod0.1.tar mbrush-fw/
```
4. upload and install with webinterface

## switch between client and ap mode

disable wifi client mode and enable ap mode
```
rm /root/mb_conf/wifi_client  && reboot
```
enable wifi client mode and disable ap mode
```
touch /root/mb_conf/wifi_client && reboot
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
