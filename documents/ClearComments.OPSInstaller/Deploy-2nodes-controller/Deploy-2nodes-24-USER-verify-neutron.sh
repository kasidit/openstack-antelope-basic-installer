# OpenStack Queens installation script 
# on Ubuntu 16.04.4 by kasidit chanchio
# vasabilab, dept of computer science, Thammasat University, Thailand
# copyright 2018 
#
#
#!/bin/bash -x
cd $HOME/OPSInstaller/Deploy-2nodes-controller
pwd
echo "Run this script as a user."
echo -n "Verify neutron"
source ./admin-openrc.sh
openstack extension list --network
