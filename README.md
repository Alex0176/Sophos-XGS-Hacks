Welcome to my Sophos script libary. 

the Goal is to help people with Sophos XGS Firewall issues and solutions a little bit away from the supported way. 

How to Install it?

if you download a script or parse it to the Advanced Shell of your Firewall, you have to care about the possibility to run. 
chmod +x SCRIPTNAME

- Rule #1
Scripts can not run vom /tmp - thats a security feature. You have to put it in for example /bin. This part of the image is only ready only mounted. So you have to mount it writeable and after changes mount it readonly again.

mount -o remount,rw /

after changes - dont forget to make your script runable!

mount -o remount,ro /

Scripts: 
- check-ipsec.sh The script check your IPSec Tunnel that you named in the argument of the script. If the Tunnel is not ,,INSTALLED", the script write out the debug Informations to /tmp and reload all ipsec tunnels.

