#! /bin/bash

function SetIPAddress () {
echo "Enter ip address: ";
read ip

echo " TYPE='Ethernet'" > /etc/sysconfig/network-scripts/ifcfg-enp0s3



