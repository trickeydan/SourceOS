#!/bin/bash -e

echo "SourceBots installation."

if [ ! -d "${ROOTFS_DIR}" ]; then
	copy_previous
fi
