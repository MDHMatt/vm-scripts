#!/bin/sh
# reboot usb hub get id form here
cd /sys/bus/pci/drivers/xhci_hcd
echo -n "0000:00:14.0" > unbind
sleep 3
echo -n "0000:00:14.0" > bind
sleep 10
echo "bring up usb device"
ip link set dev enx3c18a0d4eddd up
sleep 3
echo "restart networking"
systemctl restart networking
echo "done"
