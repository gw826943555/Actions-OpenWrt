#!/bin/bash

cd ./openwrt
rm -f .config*
touch .config

cat >> .config <<EOF
CONFIG_TARGET_ipq40xx=y
CONFIG_TARGET_ipq40xx_generic=y
CONFIG_TARGET_ipq40xx_generic_DEVICE_p2w_r619ac-128m=y
EOF

cat >> .config <<EOF
CONFIG_SDK=y
EOF

cat >> .config <<EOF
CONFIG_PACKAGE_block-mount=y

CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fuse=y

CONFIG_PACKAGE_kmod-usb-storage-extras=y

CONFIG_PACKAGE_dnsmasq=n
CONFIG_PACKAGE_dnsmasq-full=y

CONFIG_PACKAGE_luci=y
CONFIG_LUCI_LANG_en=y
CONFIG_LUCI_LANG_zh-cn=y

CONFIG_PACKAGE_luci-app-adblock=y
CONFIG_PACKAGE_luci-app-aria2=y
CONFIG_PACKAGE_luci-app-hd-idle=y
CONFIG_PACKAGE_luci-app-samba=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-upnp=y

CONFIG_PACKAGE_luci-theme-material=y

CONFIG_PACKAGE_aria2=y
CONFIG_ARIA2_NOXML=y
CONFIG_ARIA2_BITTORRENT=y
CONFIG_ARIA2_SFTP=y
CONFIG_ARIA2_ASYNC_DNS=y
CONFIG_ARIA2_COOKIE=y
CONFIG_ARIA2_WEBSOCKET=y

CONFIG_PACKAGE_wget=y

CONFIG_PACKAGE_wpad-basic=n
CONFIG_PACKAGE_wpad=y
EOF

make defconfig
