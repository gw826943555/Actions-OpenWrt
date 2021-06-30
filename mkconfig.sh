#!/bin/bash

cd /mnt/openwrt
rm -f .config*
touch .config

cat >> .config <<EOF
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_xiaomi_mi-router-cr6608=y
EOF

#
# LuCI
#
cat >> .config <<EOF
CONFIG_PACKAGE_luci=y
CONFIG_LUCI_LANG_en=y
CONFIG_LUCI_LANG_zh_Hans=y
CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-aria2=n
CONFIG_PACKAGE_luci-app-dawn=y
CONFIG_PACKAGE_luci-app-hd-idle=n
CONFIG_PACKAGE_luci-app-logview=y
CONFIG_PACKAGE_luci-app-samba4=n
CONFIG_PACKAGE_luci-app-transmission=n
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-unblockneteasemusic=n
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
CONFIG_PACKAGE_luci-app-vsftpd=n
CONFIG_PACKAGE_luci-app-wrtbwmon=y
CONFIG_PACKAGE_luci-app-xray=y
CONFIG_PACKAGE_luci-mod-dashboard=n
EOF

#
# Filesystem
#
cat >> .config <<EOF
CONFIG_PACKAGE_exfat-fsck=n
CONFIG_PACKAGE_exfat-mkfs=n
EOF

#
# Packages
#
cat >> .config <<EOF
CONFIG_PACKAGE_bind-dig=y
CONFIG_PACKAGE_block-mount=n
CONFIG_PACKAGE_blockd=n
CONFIG_PACKAGE_blkid=n
CONFIG_PACKAGE_dnsmasq=n
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_iperf3=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_kmod-fs-vfat=n
CONFIG_PACKAGE_kmod-fs-ext4=n
CONFIG_PACKAGE_kmod-fs-exfat=n
CONFIG_PACKAGE_kmod-fuse=n
CONFIG_PACKAGE_kmod-usb-storage-extras=n
CONFIG_PACKAGE_kmod-usb-storage-uas=n
CONFIG_PACKAGE_openssh-sftp-server=n
CONFIG_PACKAGE_vim-fuller=y
CONFIG_PACKAGE_wget=y
CONFIG_PACKAGE_wpad=y
CONFIG_PACKAGE_wpad-basic=n
CONFIG_PACKAGE_zram-swap=n
EOF

#
# Aria2
#
#cat >> .config <<EOF
#CONFIG_PACKAGE_aria2=y
#CONFIG_ARIA2_NOXML=y
#CONFIG_ARIA2_BITTORRENT=y
#CONFIG_ARIA2_SFTP=y
#CONFIG_ARIA2_ASYNC_DNS=y
#CONFIG_ARIA2_COOKIE=y
#CONFIG_ARIA2_WEBSOCKET=y
#EOF

#
# Utilities
#
cat >> .config <<EOF
CONFIG_PACKAGE_lsof=y
EOF

#
# Network Support
#
#cat >> .config <<EOF
#CONFIG_PACKAGE_kmod-sched=y
#CONFIG_PACKAGE_kmod-sched-core=y
#CONFIG_PACKAGE_kmod-tcp-bbr=y
#CONFIG_PACKAGE_kmod-tcp-hybla=y
#EOF

#
# Extra packages
#
cat >> .config <<EOF
CONFIG_PACKAGE_xray-core=y
CONFIG_PACKAGE_xray-geodata=y
EOF

make defconfig