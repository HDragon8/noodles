#/bin/bash
#复制自P3TERX大大的代码，非常感谢！
#=================================================
# Description: OpenWrt DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.30.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
sed -i 's/OpenWrt/noodles/g' package/base-files/files/bin/config_generate

# Modify default WiFi SSID
sed -i 's/OpenWrt/noodles/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify the version number
sed -i 's/OpenWrt/noodles @ $(date "+%Y.%m.%d") build 春季版 OpenWrt/g' package/lean/default-settings/files/zzz-default-settings

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Add kernel build user
[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="noodles"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"noodles"@' .config

# Add kernel build domain
[ -z $(grep "CONFIG_KERNEL_BUILD_DOMAIN=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_DOMAIN="HDragon"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_DOMAIN=\).*@\1$"HDragon"@' .config
