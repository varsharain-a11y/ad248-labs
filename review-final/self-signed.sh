#!/bin/bash
sudo -u eap keytool -genkeypair -alias appserver -storetype jks -keyalg RSA -keysize 2048 -keystore /opt/standalone/identity.jks -keypass "34p7-k3yst0r3" -storepass "34p7-k3yst0r3" -dname "CN=JBoss Instructor, OU=Red Hat Training, O=Red Hat, L=Raleigh, ST=NC, C=US"
