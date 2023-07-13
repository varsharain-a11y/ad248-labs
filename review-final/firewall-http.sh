#!/bin/bash
sudo firewall-cmd --zone=public --add-port 8080/tcp --permanent
sudo firewall-cmd --zone=public --add-port 8230/tcp --permanent
sudo firewall-cmd --reload
