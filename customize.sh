#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT

#1. Modify default IP
if [ -e openwrt/package/base-files/files/bin/config_generate ] ; then
sed -i 's/192.168.1.1/192.168.2.1/g' openwrt/package/base-files/files/bin/config_generate
fi
#2.Modify the version number
if [ -e openwrt/package/lean/default-settings/files/zzz-default-settings ] ; then
sed -i 's/OpenWrt/J.K.Peng build $(date "+%Y.%m.%d") @ OpenWrt/g' openwrt/package/lean/default-settings/files/zzz-default-settings
fi
# 3.Modify default theme
if [ -e openwrt/feeds/luci/collections/luci/Makefile ] ; then
sed -i 's/luci-theme-bootstrap/luci-theme-netgear/g' openwrt/feeds/luci/collections/luci/Makefile
fi
#4.Modify the shell banner
if [ -e openwrt/package/base-files/files/etc/banner ] ; then
sed -i 's/HomeLede v2020.06.27 based on OpenWrt R20.6.18/J.K.Peng build base on OpenWrt/g' openwrt/package/base-files/files/etc/banner
fi
