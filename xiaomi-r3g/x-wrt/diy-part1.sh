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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Lienol/openwrt-package
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/luckydarren/lienol-openwrt-package' feeds.conf.default
#sed -i '$a src-git lienol2 https://github.com/TinyTitanPro/lienol-openwrt-package.git' feeds.conf.default
#sed -i '$a src-git lienol2 https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default

#passwall
# sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

#jerrykuku
#sed -i '$a src-git jerrykuku https://github.com/jerrykuku/luci-app-vssr' feeds.conf.default

#Support MIPS FPU EMULATOR
#sed -i '$a CONFIG_GENERIC_PINCONF=y' target/linux/ramips/mt7621/config-4.14
#sed -i '$a CONFIG_GPIOLIB_IRQCHIP=y' target/linux/ramips/mt7621/config-4.14
#sed -i '$a CONFIG_MIPS_FPU_EMULATOR=y' target/linux/ramips/mt7621/config-4.14
#sed -i '/CONFIG_MIPS_CBPF_JIT=y/d' target/linux/ramips/mt7621/config-4.14

#lean
echo 'src-git lean_packages https://github.com/coolsnowwolf/packages' >>feeds.conf.default
echo 'src-git lean_luci https://github.com/coolsnowwolf/luci' >>feeds.conf.default
#ssr-plus
echo 'src-git ssr_plus https://github.com/fw876/helloworld' >>feeds.conf.default
#依赖
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#passwall
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#openclash
echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
#vssr
#echo 'src-git vssr https://github.com/jerrykuku/luci-app-vssr' >>feeds.conf.default
#bypass
echo 'src-git bypass https://github.com/tianiue/luci-app-bypass' >>feeds.conf.default
#argon主题
#echo 'src-git argon https://github.com/jerrykuku/luci-theme-argon' >>feeds.conf.default
#推送
#echo 'src-git pushbot https://github.com/zzsj0928/luci-app-pushbot' >>feeds.conf.default
#echo 'src-git serverchan https://github.com/tty228/luci-app-serverchan' >>feeds.conf.default
#网易云音乐
#echo 'src-git unblockneteasemusic https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic' >>feeds.conf.default
#https://github.com/maxlicheng/luci-app-unblockmusic
#AdGuard Home
#echo 'src-git adguardhome https://github.com/rufengsuixing/luci-app-adguardhome' >>feeds.conf.default
#阿里云盘 WebDAV 服务
echo 'src-git aliyundrive_webdav https://github.com/messense/aliyundrive-webdav' >>feeds.conf.default
#app-store
#echo 'src-git app_store https://github.com/souwei168/luci-app-store' >>feeds.conf.default
#mosdns
echo 'src-git mosdns https://github.com/IrineSistiana/mosdns' >>feeds.conf.default
echo 'src-git mosdns_cn https://github.com/IrineSistiana/mosdns-cn' >>feeds.conf.default
#MentoHUST
#echo 'src-git MentoHUST https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk' >>feeds.conf.default
#echo 'src-git airwhu https://github.com/KyleRicardo/luci-app-airwhu' >>feeds.conf.default


mkdir package/other
cd package/other
git clone https://github.com/jerrykuku/luci-app-vssr
git clone https://github.com/jerrykuku/luci-theme-argon
#git clone https://github.com/maxlicheng/luci-app-unblockmusic
git clone https://github.com/rufengsuixing/luci-app-adguardhome
git clone https://github.com/souwei168/luci-app-store
git clone https://github.com/IrineSistiana/mosdns
git clone https://github.com/IrineSistiana/mosdns-cn
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
git clone https://github.com/KyleRicardo/luci-app-airwhu
cd ../../
rm -rf feeds/lean_luci/themes/luci-theme-argon
#rm -rf feeds/lean_luci/applications/luci-app-unblockmusic