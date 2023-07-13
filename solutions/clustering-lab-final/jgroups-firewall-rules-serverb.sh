#!/bin/sh

# To avoid jgroups warnings set network buffers to 1MB.
echo '
net.core.rmem_max=1073741824
net.core.wmem_max=1073741824
' > /etc/sysctl.d/eap_jgroups.conf
sysctl -q --system

# Multicast ports
firewall-cmd --permanent --zone=public --add-port=23364/udp # mod_cluster 
firewall-cmd --permanent --zone=public --add-port=45688/udp # jgroups_udp

firewall-cmd --permanent --zone=public --add-port=45700/udp

# For port-offset=0
firewall-cmd --permanent --zone=public --add-port=55200/udp # jgroups_udp
firewall-cmd --permanent --zone=public --add-port=54200/tcp # jgroups_udp_fd


firewall-cmd --permanent --zone=public --add-port=8009/tcp
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --permanent --zone=public --add-port=8180/tcp
firewall-cmd --permanent --zone=public --add-port=7600/tcp
firewall-cmd --permanent --zone=public --add-port=57600/tcp

firewall-cmd --reload
