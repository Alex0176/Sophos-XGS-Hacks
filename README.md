Welcome to my Sophos script libary. 

the Goal is to help people with Sophos XGS Firewall issues and solutions a little bit away from the supported way. 

if you download a script or parse it to the Advanced Shell of your Firewall, you have to care about the possibility to run. 

chmod +x SCRIPTNAME

Scripts: 
- check-ipsec.sh The script check your IPSec Tunnel that you named in the argument of the script. If the Tunnel is not ,,INSTALLED", the script write out the debug Informations to /tmp and reload all ipsec tunnels.
- 
