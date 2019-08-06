#!/bin/sh

cat >>/boot/config.txt <<EOF
# Clear any filters that may previously have been in effect.
[all]
# Enable the serial console on pins 8 and 10.
enable_uart=1
EOF

cat >>/etc/network/interfaces <<EOF
# Bring up interface with link local address
# As DHCPCD is disabled, we can disregard the above warning
allow-hotplug eth0
iface eth0 inet manual
EOF
