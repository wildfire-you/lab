
DHCP_conf=/etc/dhcp/dhcpd.conf 

NAMED_revers=/var/named/1.10.in-addr.local

NAMED_zone=/var/named/wildfire.cc.zone

cp $DHCP_conf $DHCP_conf.bak
cp $NAMED_revers $NAMED_revers.bak
cp $NAMED_zone $NAMED_zone.bak
