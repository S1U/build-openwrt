#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Change Luci
# Linux
sed -i '2s/^/#/;3s/^#//' feeds.conf.default

# Change Kernel
sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.6/g' target/linux/rockchip/Makefile

# Modify default IP
# Linux
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
