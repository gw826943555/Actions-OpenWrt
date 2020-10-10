#!/bin/bash

cd /mnt/openwrt

sed -i "s/timezone='UTC'/timezone='CST-8'/g" ./package/base-files/files/bin/config_generate
sed -i "/timezone/a\\\t\tset system.@system[-1].zonename='Asia/Shanghai'" ./package/base-files/files/bin/config_generate
sed -i '/memberships/a\\\t\tnet.ipv4.tcp_fastopen=3' ./package/base-files/files/etc/sysctl.d/10-default.conf
sed -i 's/nf_conntrack_max=16384/nf_conntrack_max=65536/g' ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i 's/radio${devidx}.disabled=1/radio${devidx}.disabled=0/g' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh

echo 'src-git misc https://github.com/gw826943555/openwrt-packages-misc' >> ./feeds.conf.default