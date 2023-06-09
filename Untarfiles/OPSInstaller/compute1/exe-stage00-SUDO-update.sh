# OpenStack Queens installation script on Ubuntu 16.04.2 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2018  Kasidit Chanchio
#
# this script or commands below should be called
# prior to openstack installation
#
#!/bin/bash 
#
cd /home/vasabi-1234loginname4321-ibasav/OPSInstaller/compute1; pwd

cp files/hosts /etc/hosts
#cp /etc/apt/sources.list /etc/apt/sources.list.saved
#cp files/local-sources.list /etc/apt/sources.list
 
apt-get update
#printf "set repo and update\n"
#apt-get -y install software-properties-common
add-apt-repository cloud-archive:antelope
#add-apt-repository cloud-archive:wallaby
#
# assume the controller is up to date.
#
apt-get update 
apt-get -y dist-upgrade
apt-get -y install python3-openstackclient
apt-get -y install ifupdown net-tools
# reboot (if needed)
reboot
