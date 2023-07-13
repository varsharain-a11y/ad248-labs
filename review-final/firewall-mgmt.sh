sudo firewall-cmd --zone=public --add-port 9990/tcp --permanent
sudo firewall-cmd --zone=public --add-port 9999/tcp --permanent
sudo firewall-cmd --reload
