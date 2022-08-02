cd $BASE_DIR/packages/runusb
debuild -uc -us

cd $BASE_DIR/packages/usbmount
dpkg-buildpackage -us -uc -b

mv $BASE_DIR/packages/*.deb $BASE_DIR/work/*-SourceOS/stagesb/rootfs/home/pi
