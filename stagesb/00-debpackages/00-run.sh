cd $BASE_DIR/packages/runusb
debuild -uc -us
mv build/*.deb $BASE_DIR/work/*-SourceOS/stagesb/rootfs/home/pi

cd $BASE_DIR/packages/usbmount
dpkg-buildpackage -us -uc -b
mv build/*.deb $BASE_DIR/work/*-SourceOS/stagesb/rootfs/home/pi

# mv $BASE_DIR/packages/built/*.deb $BASE_DIR/work/*-SourceOS/stagesb/rootfs/home/pi
