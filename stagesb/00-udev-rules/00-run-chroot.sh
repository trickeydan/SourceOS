#!/bin/sh

group=plugdev

# Create a group and add the default user to it.
groupadd --force $group
usermod -a -G $group ${FIRST_USER_NAME}

# Give members of the group access to particular devices.
dir=/etc/udev/rules.d
mkdir -p $dir
cat >$dir/99-sb-kit.rules <<EOF
# SR power board v4
SUBSYSTEM=="usb", ATTRS{idVendor}=="1bda", ATTRS{idProduct}=="0010", GROUP="$group", MODE="0666"
# SR motor board v4
SUBSYSTEM=="tty", DRIVERS=="ftdi_sio", ATTRS{interface}=="MCV4B", GROUP="$group", MODE="0666"
# SR servo board v4
SUBSYSTEM=="usb", ATTRS{idVendor}=="1bda", ATTRS{idProduct}=="0011", GROUP="$group", MODE="0666"
EOF
