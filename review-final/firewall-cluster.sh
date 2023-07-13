sudo firewall-cmd --zone=public --add-port=7600/tcp --permanent 
sudo firewall-cmd --zone=public --add-port=7750/tcp --permanent 
sudo firewall-cmd --zone=public --add-port=45688/udp --permanent 
sudo firewall-cmd --zone=public --add-port=23364/udp --permanent 
sudo firewall-cmd --zone=public --add-port=45700/udp --permanent 
sudo firewall-cmd --zone=public --add-port=45850/udp --permanent 
sudo firewall-cmd --zone=public --add-port=55200/udp --permanent 
sudo firewall-cmd --zone=public --add-port=55350/udp --permanent 
sudo firewall-cmd --zone=public --add-port=57600/tcp --permanent 
sudo firewall-cmd --zone=public --add-port=57750/tcp --permanent 
sudo firewall-cmd --zone=public --add-port=54200/tcp --permanent 
sudo firewall-cmd --zone=public --add-port=54350/tcp --permanent 

sudo firewall-cmd --reload
