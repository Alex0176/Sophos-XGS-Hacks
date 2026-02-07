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

## Install IPSec check for autorun in Sophos XGS

*mount -o remount,rw /
vi  /bin/red_server.pl*

search for the line: 

my $debug = 0;

and add:

*system("/bin/check-ipsec.sh auto 5 &");*

now we can save with ESC :wq

unmount the writeable part of the Image with and restart the red_server

*mount -o remount,ro /
service red_server:stop -dsnosync
service red_server:start -dsnosync*

now its time to check if the task is running:

* ps |grep check-ipsec.sh*
