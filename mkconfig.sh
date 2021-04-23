#!/bin/bash

cd /mnt/openwrt
rm -f .config*
touch .config

cat >> .config <<EOF
CONFIG_TARGET_ipq40xx=y
CONFIG_TARGET_ipq40xx_generic=y
CONFIG_TARGET_ipq40xx_generic_DEVICE_p2w_r619ac-128m=y
EOF

#cat >> .config <<EOF
#CONFIG_DEVEL=y
#CONFIG_NEED_TOOLCHAIN=y
#CONFIG_TOOLCHAINOPTS=y
#CONFIG_BINUTILS_USE_VERSION_2_34=y
#CONFIG_GCC_USE_VERSION_8=y
#CONFIG_LIBC_USE_GLIBC=y
#CONFIG_USE_GLIBC=y
#CONFIG_LIBC="glibc"
#CONFIG_TARGET_SUFFIX="gnueabi"
#CONFIG_PACKAGE_ldd=y
#EOF

#
# LuCI
#
cat >> .config <<EOF
CONFIG_PACKAGE_luci=y
CONFIG_LUCI_LANG_en=y
CONFIG_LUCI_LANG_zh_Hans=y
CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-aria2=y
CONFIG_PACKAGE_luci-app-cpufreq=y
CONFIG_PACKAGE_luci-app-dawn=y
CONFIG_PACKAGE_luci-app-hd-idle=y
CONFIG_PACKAGE_luci-app-ksmbd=n
CONFIG_PACKAGE_luci-app-logview=y
CONFIG_PACKAGE_luci-app-netdata=y
CONFIG_PACKAGE_luci-app-nft-qos=n
CONFIG_PACKAGE_luci-app-openclash=n
CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_luci-app-transmission=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-unblockneteasemusic=n
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
CONFIG_PACKAGE_luci-app-vsftpd=y
CONFIG_PACKAGE_luci-app-wifischedule=y
CONFIG_PACKAGE_luci-app-wrtbwmon=y
CONFIG_PACKAGE_luci-app-xray=y
CONFIG_PACKAGE_luci-mod-dashboard=n
EOF

#
# Filesystem
#
cat >> .config <<EOF
CONFIG_PACKAGE_exfat-fsck=y
CONFIG_PACKAGE_exfat-mkfs=y
EOF

#
# Packages
#
cat >> .config <<EOF
CONFIG_PACKAGE_bind-dig=y
CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_blockd=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_dnsmasq=n
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_iperf3=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fuse=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_transmission-daemon-openssl=y
CONFIG_PACKAGE_transmission-web-control=y
CONFIG_PACKAGE_vim-fuller=y
CONFIG_PACKAGE_wget=y
CONFIG_PACKAGE_wpad=y
CONFIG_PACKAGE_wpad-basic=n
CONFIG_PACKAGE_zram-swap=n
EOF

#
# Aria2
#
cat >> .config <<EOF
CONFIG_PACKAGE_aria2=y
CONFIG_ARIA2_NOXML=y
CONFIG_ARIA2_BITTORRENT=y
CONFIG_ARIA2_SFTP=y
CONFIG_ARIA2_ASYNC_DNS=y
CONFIG_ARIA2_COOKIE=y
CONFIG_ARIA2_WEBSOCKET=y
EOF

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
# Cryptographic API modules
#
cat >> .config <<EOF
CONFIG_PACKAGE_kmod-crypto-aead=y
CONFIG_PACKAGE_kmod-crypto-arc4=y
CONFIG_PACKAGE_kmod-crypto-authenc=y
CONFIG_PACKAGE_kmod-crypto-cbc=y
CONFIG_PACKAGE_kmod-crypto-crc32c=y
CONFIG_PACKAGE_kmod-crypto-deflate=y
CONFIG_PACKAGE_kmod-crypto-des=y
CONFIG_PACKAGE_kmod-crypto-ecb=y
CONFIG_PACKAGE_kmod-crypto-echainiv=y
CONFIG_PACKAGE_kmod-crypto-hash=y
CONFIG_PACKAGE_kmod-crypto-hmac=y
CONFIG_PACKAGE_kmod-crypto-manager=y
CONFIG_PACKAGE_kmod-crypto-md5=y
CONFIG_PACKAGE_kmod-crypto-null=y
CONFIG_PACKAGE_kmod-crypto-pcompress=y
CONFIG_PACKAGE_kmod-crypto-sha1=y
CONFIG_PACKAGE_kmod-crypto-user=y
CONFIG_PACKAGE_kmod-cryptodev=y
EOF

#
# Python
#
cat >> .config <<EOF
CONFIG_PACKAGE_python3=y
CONFIG_PACKAGE_python3-pip=y
EOF

#
# Extra packages
#
cat >> .config <<EOF
CONFIG_PACKAGE_xray-core=y
CONFIG_PACKAGE_xray-geodata=y
EOF

make defconfig
