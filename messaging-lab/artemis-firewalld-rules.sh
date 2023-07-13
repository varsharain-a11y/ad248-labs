#!/bin/sh

# To avoid jgroups warnings set network buffers to 1MB.
echo '
net.core.rmem_max=1073741824
net.core.wmem_max=1073741824
' > /etc/sysctl.d/eap_jgroups.conf
sysctl -q --system

# Multicast ports
#firewall-cmd --permanent --zone=public --add-port=23364/udp # mod_cluster (not needed by artemis)
firewall-cmd --permanent --zone=public --add-port=45688/udp # jgroups_udp

# For port-offset=0
firewall-cmd --permanent --zone=public --add-port=55200/udp # jgroups_udp
firewall-cmd --permanent --zone=public --add-port=54200/tcp # jgroups_udp_fd

# For port-offset=100
firewall-cmd --permanent --zone=public --add-port=55300/udp # jgroups_udp
firewall-cmd --permanent --zone=public --add-port=54300/tcp # jgroups_udp_fd

firewall-cmd --reload
