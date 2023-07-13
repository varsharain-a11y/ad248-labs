#!/bin/bash

#yum -y update
yum -y install vim-enhanced net-tools iproute wget curl mariadb openldap-clients

# OpenJDK8
yum -y install java-1.8.0-openjdk-devel mysql-connector-java

#Configure NFS
setsebool -P virt_use_nfs=true
systemctl enable rpcbind
systemctl start rpcbind
mkdir -p /var/log/jboss
chmod -R 777 /var/log/jboss
echo "172.25.250.254:/var/log/jboss	/var/log/jboss	nfs	defaults	0 0" >> /etc/fstab

# Configure Firewall
#firewall-cmd --zone=external --add-port 9990/tcp --permanent
#firewall-cmd --zone=external --add-port 8080/tcp --permanent
#firewall-cmd --zone=external --add-port 8180/tcp --permanent
firewall-cmd --reload

# Seal the image
sed -i -e "s/RHT_NETWORK=.*/RHT_NETWORK=no/" /etc/rht
