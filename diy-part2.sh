#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate



# echo '添加luci-app-vssr'
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
echo 'CONFIG_PACKAGE_luci-app-vssr=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_V2ray=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Trojan=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Server=y' >> .config
echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Socks=y' >> .config
echo 'CONFIG_PACKAGE_luci-i18n-vssr-zh-cn=y'  >> .config
