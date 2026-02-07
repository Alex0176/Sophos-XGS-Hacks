if [ -z "$1" ]; then
   echo "Welcome to ipsec Checker by Biricon IT Services GmbH www.biricon.eu"
   echo "use the script with the IPSec Tunnelname as argument"
   echo "if the tunnel was not found, ipsec will be reloaded and the debug information for Sophos support will be created"
   echo "usage: $0 NameofTunnel"
   echo "here you see a few ipsec tunnels on your System:"
   read -p "Press enter to continue"
   ipsec status
else
   NOW=`date '+%F_%H:%M:%S'`;
   if ipsec status | grep "$1" |grep -q 'INSTALLED'; then
      echo "$1 ok $NOW"
   else
      echo "$1 is down $NOW"
      echo "$1 is down $NOW">>/tmp/ipsec-status.log
      mkdir -p /tmp/ipsec_debug/cfg && cp /log/charon.log /tmp/ipsec_debug/ && ipsec statusall > /tmp/ipsec_debug/statusall.log && cp /tmp/ipsec/connections/* /tmp/ipsec_debug/cfg
      psql corporate nobody -x -c "select * from tblvpnconnection" > /tmp/ipsec_debug/tblvpnconnection.db && psql corporate nobody -x -c "select * from tblvpnpolicy" > /tmp/ipsec_debug/tblvpnpolicy.db
      ipsec reload
      echo "$1 VPN started with ipsec up $1-*"
   fi
fi
