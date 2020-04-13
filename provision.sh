# Provision file for CI/CD It_Jobs_Watch_Data Project

apt-get update
apt-get upgrade

sudo apt-get install python3.7 -y

sudo apt-get install python3-pip -y

sudo pip3 install -r /home/ubuntu/It_Jobs_Watch_Data_Package/requirements.txt

mkdir /home/vagrant/Downloads

sudo chmod 777 Downloads
