#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT

#1. Modify default IP
if [ -e openwrt/package/base-files/files/bin/config_generate ] ; then
sed -i 's/192.168.1.1/192.168.2.1/g' openwrt/package/base-files/files/bin/config_generate
fi
# Modify the version number
if [ -e openwrt/package/lean/default-settings/files/zzz-default-settings ] ; then
sed -i 's/OpenWrt/J.K.Peng build $(date "+%Y.%m.%d") @ OpenWrt/g' openwrt/package/lean/default-settings/files/zzz-default-settings
fi
# Modify default theme
if [ -e openwrt/feeds/luci/collections/luci/Makefile ] ; then
sed -i 's/luci-theme-bootstrap/luci-theme-netgear/g' openwrt/feeds/luci/collections/luci/Makefile
fi
