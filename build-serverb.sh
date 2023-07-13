#!/bin/bash

#yum -y update
yum -y install vim-enhanced net-tools iproute wget curl mariadb openldap-clients

# OpenJDK8
yum -y install java-1.8.0-openjdk-devel mysql-connector-java

# Configure Firewall
#firewall-cmd --zone=external --add-port 9990/tcp --permanent
#firewall-cmd --zone=external --add-port 8080/tcp --permanent
#firewall-cmd --zone=external --add-port 8180/tcp --permanent
firewall-cmd --reload

# Seal the image
sed -i -e "s/RHT_NETWORK=.*/RHT_NETWORK=no/" /etc/rht
