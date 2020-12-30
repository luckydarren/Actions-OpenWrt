#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Lienol/openwrt-package
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/luckydarren/lienol-openwrt-package' feeds.conf.default
#sed -i '$a src-git lienol2 https://github.com/TinyTitanPro/lienol-openwrt-package.git' feeds.conf.default
#sed -i '$a src-git lienol2 https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default

#passwall
sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

#jerrykuku
#sed -i '$a src-git jerrykuku https://github.com/jerrykuku/luci-app-vssr' feeds.conf.default

#Support MIPS FPU EMULATOR
#sed -i '$a CONFIG_GENERIC_PINCONF=y' target/linux/ramips/mt7621/config-4.14
#sed -i '$a CONFIG_GPIOLIB_IRQCHIP=y' target/linux/ramips/mt7621/config-4.14
#sed -i '$a CONFIG_MIPS_FPU_EMULATOR=y' target/linux/ramips/mt7621/config-4.14
#sed -i '/CONFIG_MIPS_CBPF_JIT=y/d' target/linux/ramips/mt7621/config-4.14
