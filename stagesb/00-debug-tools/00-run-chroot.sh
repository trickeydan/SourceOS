#!/bin/sh

cat >>/boot/config.txt <<EOF
# Clear any filters that may previously have been in effect.
[all]
# Enable the serial console on pins 8 and 10.
enable_uart=1
EOF
