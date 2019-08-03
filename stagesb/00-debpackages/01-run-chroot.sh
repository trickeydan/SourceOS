#!/usr/bin/env bash

for package in /home/pi/*.deb;
do
	apt install $package
done
