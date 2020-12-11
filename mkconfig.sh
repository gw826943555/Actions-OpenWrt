#!/bin/bash

cd /mnt/openwrt
rm -f .config*
touch .config

cat >> .config <<EOF
CONFIG_TARGET_ipq40xx=y
CONFIG_TARGET_ipq40xx_generic=y
CONFIG_TARGET_ipq40xx_generic_DEVICE_mobipromo_cm520-79f=y
EOF

cat >> .config <<EOF
CONFIG_DEFAULT_TARGET_OPTIMIZATION="-O3"
CONFIG_DEFAULT_ath10k-firmware-qca4019-ct-full-htt=y

CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_blockd=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fuse=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y
CONFIG_PACKAGE_dnsmasq=n
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_luci=y
CONFIG_LUCI_LANG_en=y
CONFIG_LUCI_LANG_zh_Hans=y
CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-adblock=y
CONFIG_PACKAGE_luci-app-aria2=y
CONFIG_PACKAGE_luci-app-cpufreq=y
CONFIG_PACKAGE_luci-app-dawn=y
CONFIG_PACKAGE_luci-app-hd-idle=y
CONFIG_PACKAGE_luci-app-netdata=n
CONFIG_PACKAGE_luci-app-samba4=y
CONFIG_PACKAGE_libpam=y
CONFIG_PACKAGE_luci-app-shadowsocks-libev=n
CONFIG_PACKAGE_luci-app-transmission=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-unblockneteasemusic=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-vlmcsd=y
CONFIG_PACKAGE_luci-app-vsftpd=y
CONFIG_PACKAGE_luci-app-wifischedule=y
CONFIG_PACKAGE_luci-app-wrtbwmon=y
CONFIG_PACKAGE_luci-mod-dashboard=y
CONFIG_PACKAGE_aria2=y
CONFIG_ARIA2_NOXML=y
CONFIG_ARIA2_BITTORRENT=y
CONFIG_ARIA2_SFTP=y
CONFIG_ARIA2_ASYNC_DNS=y
CONFIG_ARIA2_COOKIE=y
CONFIG_ARIA2_WEBSOCKET=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_wget=y
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_vim-fuller=y
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_iperf3=y
CONFIG_PACKAGE_bind-dig=y
CONFIG_PACKAGE_shadowsocksr-config=y
CONFIG_PACKAGE_shadowsocksr-redir-mbedtls=y
CONFIG_PACKAGE_shadowsocksr-rules=y
CONFIG_PACKAGE_shadowsocksr-utils=y
CONFIG_PACKAGE_luci-app-ssr-lite=y
CONFIG_PACKAGE_transmission-daemon-openssl=y
CONFIG_PACKAGE_transmission-web-control=y
CONFIG_PACKAGE_wpad=y
CONFIG_PACKAGE_wpad-basic=n
EOF

make defconfig
