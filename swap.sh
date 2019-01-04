#!/bin/bash
# Author:       Matt Dinsdale
# Email:        admin@mdhosting.co.uk
# Date:         2019-01-04
# Usage:        swap.sh
# Description:  adds 1gb swap to vm
# 

cd /var
touch swap.img
chmod 600 swap.img
dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
mkswap /var/swap.img
swapon /var/swap.img
echo "/var/swap.img    none    swap    sw    0    0" >> /etc/fstab