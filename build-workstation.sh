#!/bin/bash

#yum -y update
yum -y install vim-enhanced net-tools iproute wget curl

# OpenJDK8
yum -y install java-1.8.0-openjdk-devel mysql-connector-java

# Install openldap
yum -y install openldap-servers openldap-clients

systemctl start slapd.service
systemctl enable slapd.service

# Customize openldap configuration
curl -so /etc/openldap/slapd.conf-jboss http://materials.example.com/ldap/slapd.conf-jboss
rm -rf /etc/openldap/certs/*
mv /etc/openldap/slapd.d /etc/openldap/slapd.d-rhtorig
ln -s /etc/openldap/slapd.conf-jboss /etc/openldap/slapd.conf
chown root:ldap /etc/openldap/slapd.conf-jboss
chmod 640 /etc/openldap/slapd.conf-jboss
systemctl restart slapd.service

# Load the LDAP database
cd /tmp
curl -sO http://materials.example.com/ldap/load.ldif
/usr/bin/ldapadd -x -D "cn=Manager,dc=redhat,dc=com" -w 43etq5 -f load.ldif 

# Install MariaDB
yum -y install mariadb-server mariadb

# Initialize the MariaDB databases
systemctl start mariadb
systemctl enable mariadb

cd /tmp
curl -sO materials.example.com/databases/bksecurity.sql
mysql < bksecurity.sql
curl -sO materials.example.com/databases/bookstore.sql
mysql < bookstore.sql
curl -sO materials.example.com/databases/bkjobs.sql
mysql < bkjobs.sql


#Update the rules to allow access from the workstation
mysql -e "drop user ''@localhost;" mysql
mysql -e "drop user ''@workstation.lab.example.com;" mysql

# Configure firewall
firewall-cmd --zone=external --add-port 3306/tcp --permanent
firewall-cmd --zone=external --add-port 389/tcp --permanent
#firewall-cmd --zone=external --add-port 9990/tcp --permanent
#firewall-cmd --zone=external --add-port 8080/tcp --permanent
firewall-cmd --reload

#Update to install NFS
#!/bin/bash
systemctl enable rpcbind
systemctl enable nfs-server
systemctl start rpcbind
systemctl start nfs-server
systemctl start rpc-statd
systemctl start nfs-idmapd
mkdir /var/log/jboss
chown nfsnobody:nfsnobody /var/log/jboss
chmod 777 /var/log/jboss
setsebool -P virt_use_nfs=true
echo "/var/log/jboss *(rw,async,all_squash)" >> /etc/exports
firewall-cmd --permanent --zone public --add-service mountd
firewall-cmd --permanent --zone public --add-service rpc-bind
firewall-cmd --permanent --zone public --add-service nfs
firewall-cmd --reload
exportfs -r
# Seal the image
sed -i -e "s/RHT_NETWORK=.*/RHT_NETWORK=no/" /etc/rht
