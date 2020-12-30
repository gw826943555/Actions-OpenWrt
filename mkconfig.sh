#!/bin/bash

cd /mnt/openwrt
rm -f .config*
touch .config

cat >> .config <<EOF
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_dlink_dir-878-a1=y
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

cat >> .config <<EOF
CONFIG_PACKAGE_dnsmasq=n
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_luci=y
CONFIG_LUCI_LANG_en=y
CONFIG_LUCI_LANG_zh_Hans=y
CONFIG_PACKAGE_luci-app-dawn=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-mod-dashboard=y
CONFIG_PACKAGE_wpa-supplicant=y
EOF

make defconfig