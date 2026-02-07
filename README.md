# Welcome to my Sophos script libary. 

the Goal is to help people with Sophos XGS Firewall issues and solutions a little bit away from the supported way. 

## Scripts 

 - check-ipsec.sh The script check your IPSec Tunnel that you named in
   the argument of the script. If the Tunnel is not ,,INSTALLED", the
   script write out the debug Informations to /tmp and reload all ipsec
   tunnels.

## Installation
open ssh - Menu 5 and 3. 

*mount -o remount,rw / | curl https://raw.githubusercontent.com/Alex0176/Sophos-XGS-Hacks/refs/heads/main/check-ipsec.sh >/bin/check-ipsec.sh | chmod +x /bin/check-ipsec.sh | mount -o remount,ro /*
