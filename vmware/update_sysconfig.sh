#!/usr/bin/env bash


#$1 mac / 00:50:56:9c:4d:b7
#$2 index / 1, 2 ..
#$3 type  / w, e, m
#$4 host_prefix / ivpcoe-

Hostname=$4$3$2
DOMAIN=wildfire.cc

ping -c 1 10.1.${NetPrefix}.${2} 
not_connect=$?
not_ok=${not_connect/.*}
if [[ $not_ok -eq 0 ]]; then
  exit 1
fi

#Update dhcpd.conf

if [[ $3 == "w" ]]; then
   NetPrefix=62
elif [[ $3 == "e" ]]; then
   NetPrefix=63
elif [[ $3 == "m" ]]; then
   NetPrefix=61
else
   echo "Wrong type"; 
   exit 1;
fi

DHCP_conf=/etc/dhcp/dhcpd.conf 
#find the entry and delete it first
sed -i "/host ${Hostname}/,+4d" $DHCP_conf 

cat >> $DHCP_conf <<EOF
host ${Hostname} {
  hardware ethernet ${1};
   option host-name "${Hostname}.${DOMAIN}";
  fixed-address 10.1.${NetPrefix}.${2};
}
EOF

NAMED_revers=/var/named/1.10.in-addr.local
#find the entry and delete it first
sed -i "/${Hostname}/d" $NAMED_revers

cat >>$NAMED_revers <<EOF
${NetPrefix}.${2}  IN PTR ${Hostname}.${DOMAIN}.
EOF

NAMED_zone=/var/named/wildfire.cc.zone
#find the entry and delete it first
sed -i "/${Hostname}/d" $NAMED_zone

#cat >> /etc/dhcp/dhcpd.conf <<EOF
cat >>$NAMED_zone <<EOF
${Hostname}.${DOMAIN}.	 IN A 10.1.${NetPrefix}.${2}
EOF

systemctl restart dhcpd
systemctl restart named

ping -c 1 10.1.${NetPrefix}.${2} 
not_connect=$?
not_ok=${not_connect/.*}
while [[ $not_ok -ne 0 ]]; do
   ping -c 1 10.1.${NetPrefix}.${2} 
   not_connect=$?
   not_ok=${not_connect/.*}
done

sleep 10

sed -i "/${Hostname}/d" ~/.ssh/known_hosts
sed -i "/10.1.${NetPrefix}.${2}/d" ~/.ssh/known_hosts

/root/lab/vmware/initnode.sh centos centos 10.1.${NetPrefix}.${2} Comet_1234567890
