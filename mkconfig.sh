#!/bin/bash

cd /mnt/openwrt
rm -f .config*
touch .config

cat >> .config <<EOF
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_witown_treebear=y
EOF

make defconfig