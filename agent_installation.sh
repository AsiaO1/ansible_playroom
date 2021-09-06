echo deb http://repo.r1soft.com/apt stable main >> /etc/apt/sources.list
wget http://repo.r1soft.com/r1soft.asc
apt-key add r1soft.asc 
apt-get update -y
apt-get install serverbackup-enterprise-agent   -y
systemctl start sbm-agent 
systemctl status sbm-agent
r1soft-setup   --get-key   http://