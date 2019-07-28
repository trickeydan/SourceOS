#! /usr/bin/bash

for package in /home/pi/*.deb;
do
    sudo dpkg -i package
done