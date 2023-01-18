
#!/bin/bash
function git_clone() {
  git clone --depth 1 $1 $2 || true
 }
function git_sparse_clone() {
  branch="$1" rurl="$2" localdir="$3" && shift 3
  git clone -b $branch --depth 1 --filter=blob:none --sparse $rurl $localdir
  cd $localdir
  git sparse-checkout init --cone
  git sparse-checkout set $@
  mv -n $@ ../
  cd ..
  rm -rf $localdir
  }
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
git_clone https://github.com/kiddin9/my-packages && mvdir my-packages
#git_clone https://github.com/kiddin9/openwrt-bypass && mvdir openwrt-bypass
git_clone https://github.com/kiddin9/luci-app-dnsfilter
git_clone https://github.com/kiddin9/aria2
git_clone https://github.com/kiddin9/luci-app-baidupcs-web
git_clone https://github.com/kiddin9/luci-theme-edge
git_clone https://github.com/kiddin9/autoshare && mvdir autoshare
git_clone https://github.com/kiddin9/luci-app-xlnetacc
git_clone https://github.com/kiddin9/qBittorrent-Enhanced-Edition
git_clone https://github.com/kiddin9/luci-app-wizard
git_clone https://github.com/kiddin9/openwrt-adguardhome && mvdir openwrt-adguardhome
git_clone https://github.com/kiddin9/openwrt-cloudreve && mvdir openwrt-cloudreve
git_clone https://github.com/xiaorouji/openwrt-passwall && mvdir openwrt-passwall
#git_clone https://github.com/fw876/helloworld && mvdir helloworld
#git_clone https://github.com/Lienol/openwrt-package liep
git clone https://github.com/AutoCONFIG/minieap-openwrt -b default
git_clone https://github.com/rufengsuixing/luci-app-autoipsetadder
git_clone https://github.com/NateLol/luci-app-beardropper
git_clone https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
git_clone https://github.com/BoringCat/luci-app-minieap

git_clone https://github.com/jerrykuku/luci-theme-argon
git_clone https://github.com/jerrykuku/luci-app-argon-config
git_clone https://github.com/jerrykuku/luci-app-vssr
git_clone https://github.com/jerrykuku/luci-app-ttnode
git_clone https://github.com/jerrykuku/luci-app-jd-dailybonus
git_clone https://github.com/sirpdboy/luci-app-advanced
git_clone https://github.com/sirpdboy/luci-app-autotimeset
git_clone https://github.com/sirpdboy/luci-app-lucky oplucky && mv -f oplucky/*/ ./ && rm -rf oplucky
git_clone https://github.com/sirpdboy/luci-app-partexp
git_clone https://github.com/sirpdboy/luci-app-ddns-go ddns-go && mvdir ddns-go
git_clone https://github.com/sirpdboy/netspeedtest && mv -n netspeedtest/luci-app-netspeedtest ./ ; rm -rf netspeedtest

git_clone https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
git_clone https://github.com/esirplayground/luci-app-poweroff
git_clone https://github.com/lvqier/luci-app-dnsmasq-ipset
git_clone https://github.com/walkingsky/luci-wifidog luci-app-wifidog
git_clone https://github.com/peter-tank/luci-app-autorepeater
# git_clone https://github.com/CCnut/feed-netkeeper && mvdir feed-netkeeper
git_clone https://github.com/brvphoenix/luci-app-wrtbwmon wrtbwmon1 && mvdir wrtbwmon1
git_clone https://github.com/brvphoenix/wrtbwmon wrtbwmon2 && mvdir wrtbwmon2
git_clone https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
git_clone https://github.com/gdck/luci-app-cupsd cupsd1 && mv -n cupsd1/luci-app-cupsd ./ ; rm -rf cupsd1
# git_clone https://github.com/QiuSimons/openwrt-mos && mv -n openwrt-mos/{*mosdns,v2ray-geodata} ./ ; rm -rf openwrt-mos

git_clone https://github.com/esirplayground/LingTiGameAcc
git_clone https://github.com/esirplayground/luci-app-LingTiGameAcc
git_clone https://github.com/zxlhhyccc/luci-app-v2raya
git_clone https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav
git_clone https://github.com/SSSSSimon/tencentcloud-openwrt-plugin-ddns && mv -n tencentcloud-openwrt-plugin-ddns/tencentcloud_ddns ./luci-app-tencentddns; rm -rf tencentcloud-openwrt-plugin-ddns
git_clone https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-cos && mv -n tencentcloud-openwrt-plugin-cos/tencentcloud_cos ./luci-app-tencentcloud-cos; rm -rf tencentcloud-openwrt-plugin-cos
git_clone https://github.com/doushang/luci-app-shortcutmenu luci-shortcutmenu && mv -n luci-shortcutmenu/luci-app-shortcutmenu ./ ; rm -rf luci-shortcutmenu
git_clone https://github.com/messense/aliyundrive-webdav aliyundrive && mv -n aliyundrive/openwrt/* ./ ; rm -rf aliyundrive
git_clone https://github.com/sbilly/netmaker-openwrt && mv -n netmaker-openwrt/netmaker ./; rm -rf netmaker-openwrt
git_clone https://github.com/lisaac/luci-app-dockerman dockerman && mv -n dockerman/applications/* ./; rm -rf dockerman

#git_clone https://github.com/messense/openwrt-wiretrustee && mv -n openwrt-wiretrustee/wiretrustee ./;rm -rf openwrt-wiretrustee
git_clone https://github.com/ophub/luci-app-amlogic amlogic && mv -n amlogic/luci-app-amlogic ./;rm -rf amlogic
git_clone https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest cloudflarespeedtest && mv -n cloudflarespeedtest/applications/* ./;rm -rf cloudflarespeedtest
git_clone https://github.com/xiaorouji/openwrt-passwall2 passwall2 && mv -n passwall2/luci-app-passwall2 ./;rm -rf passwall2
git clone --depth 1 -b luci https://github.com/xiaorouji/openwrt-passwall passwall && mv -n passwall/luci-app-passwall ./;rm -rf passwall
git_clone https://github.com/messense/aliyundrive-fuse aliyundrive && mv -n aliyundrive/openwrt/* ./;rm -rf aliyundrive
git_clone https://github.com/linkease/nas-packages && mv -n nas-packages/{network/services/*,multimedia/*} ./; rm -rf nas-packages
git_clone https://github.com/linkease/nas-packages-luci && mv -n nas-packages-luci/luci/* ./; rm -rf nas-packages-luci
git_clone https://github.com/linkease/istore && mv -n istore/luci/* ./; rm -rf istore
git_clone https://github.com/AlexZhuo/luci-app-bandwidthd

git_clone https://github.com/fullcone-nat-nftables/nft-fullcone
git_clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
git_clone https://github.com/frainzy1477/luci-app-clash
git_clone https://github.com/yichya/openwrt-cloudflared
git_clone https://github.com/peter-tank/luci-app-fullconenat
git_clone https://github.com/sbwml/openwrt-alist && mvdir openwrt-alist
git_clone https://github.com/gSpotx2f/luci-app-log
git_clone https://github.com/KFERMercer/luci-app-tcpdump
git_clone https://github.com/ykxVK8yL5L/pikpak-webdav pikpak && mv -n pikpak/openwrt/* ./;rm -rf pikpak
git_clone https://github.com/jjm2473/openwrt-apps && rm -rf openwrt-apps/{luci-app-cpufreq,luci-app-ota,luci-alias.mk} && sed -i "s/luci-alias.mk/..\/luci.mk/" openwrt-apps/*/Makefile && mvdir openwrt-apps

git_clone https://github.com/tty228/luci-app-serverchan
git_clone https://github.com/4IceG/luci-app-sms-tool smstool && mvdir smstool
git_clone https://github.com/4IceG/luci-app-modemband modemb  && mv -n modemb/* ./;rm -rf modemb
git_clone https://github.com/ZeaKyX/speedtest-web
git_clone https://github.com/ZeaKyX/luci-app-speedtest-web
# git_clone https://github.com/Zxilly/UA2F 校园网路由器多设备伪装指北https://learningman.top/archives/304
# git_clone https://github.com/jhonathanc/ps3netsrv-openwrt && mv -n ps3netsrv-openwrt/* ./;rm -rf ps3netsrv-openwrt

git_clone https://github.com/honwen/luci-app-aliddns
git_clone https://github.com/peter-tank/luci-app-dnscrypt-proxy2
git_clone https://github.com/NateLol/luci-app-oled
git_clone https://github.com/4IceG/luci-app-3ginfo op3ginfo  && mv -n op3ginfo/{3ginfo,luci-app-3ginfo} ./;rm -rf op3ginfo
git_clone https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
git_clone https://github.com/vernesong/OpenClash && mv -n OpenClash/luci-app-openclash ./; rm -rf OpenClash
git_clone https://github.com/pymumu/luci-app-smartdns
git_clone https://github.com/CHN-beta/rkp-ipid
git_clone https://github.com/Erope/openwrt_nezha nezha && mvdir nezha
# git_clone https://github.com/wiwizcom/WiFiPortal && mvdir WiFiPortal
# git_clone https://github.com/lazywalker/mmdvm-openwrt && mvdir mmdvm-openwrt

git_clone https://github.com/immortalwrt/homeproxy
git_clone https://github.com/mchome/openwrt-dogcom
git_clone https://github.com/mchome/luci-app-dogcom
# git_clone https://github.com/koshev-msk/modemfeed && mv -n modemfeed/*/*/* ./ && rm -rf modemfeed
git_clone https://github.com/zzsj0928/luci-app-pushbot
git_clone https://github.com/shanglanxin/luci-app-homebridge
git_clone https://github.com/ykxVK8yL5L/luci-app-synology synology && mv -n synology/luci-app-synology ./ && rm -rf synology
git_clone https://github.com/htynkn/openwrt-switch-lan-play && mv -n openwrt-switch-lan-play/package/* ./ && rm -rf openwrt-switch-lan-play

git_clone https://github.com/linkease/openwrt-app-actions

git_clone https://github.com/honwen/luci-app-shadowsocks-rust
git_clone https://github.com/Hyy2001X/AutoBuild-Packages && rm -rf AutoBuild-Packages/luci-app-adguardhome && mvdir AutoBuild-Packages

svn export https://github.com/Ysurac/openmptcprouter-feeds/trunk/luci-app-iperf
svn export https://github.com/QiuSimons/OpenWrt-Add/trunk/luci-app-irqbalance
svn export https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-control-speedlimit
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-bypass
svn export https://github.com/kiddin9/openwrt-packages/trunk/lua-maxminddb
svn export https://github.com/fw876/helloworld/trunk/sagernet-core
svn export https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
svn export https://github.com/fw876/helloworld/trunk/lua-neturl
svn export https://github.com/fw876/helloworld/trunk/redsocks2
svn export https://github.com/fw876/helloworld/trunk/microsocks
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-timecontrol
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-control-timewol
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-control-webrestriction
svn export https://github.com/Lienol/openwrt-package/trunk/luci-app-control-weburl

git_sparse_clone master "https://github.com/coolsnowwolf/packages" "leanpkg" net/miniupnpd net/mwan3 multimedia/UnblockNeteaseMusic-Go \
multimedia/UnblockNeteaseMusic net/amule net/antileech net/baidupcs-web net/frp multimedia/gmediarender net/go-aliyundrive-webdav \
net/qBittorrent-static net/qBittorrent net/transmission net/phtunnel libs/qtbase libs/qttools libs/rblibtorrent devel/go-rice \
net/uugamebooster net/verysync net/vlmcsd net/dnsforwarder net/nps net/n2n net/mosdns net/tcpping net/netatalk net/pgyvpn libs/wxbase
mv -f miniupnpd miniupnpd-iptables

#git_sparse_clone master "https://github.com/immortalwrt/packages" "immpkgs" net/mwol \
#net/sub-web net/dnsproxy net/haproxy net/v2raya net/cdnspeedtest net/keepalived \
#net/subconverter net/ngrokc net/oscam net/njitclient net/scutclient net/gost net/gowebdav \
#admin/bpytop libs/jpcre2 libs/wxbase libs/rapidjson libs/libcron libs/quickjspp libs/toml11 \
#utils/cpulimit utils/filebrowser utils/cups net/udp2raw net/msd_lite net/xfrpc
git_sparse_clone master "https://github.com/immortalwrt/packages" "immpkgs" net/cdnspeedtest utils/filebrowser utils/cpulimit \
net/gost net/gowebdav net/dnsproxy utils/cups

git_sparse_clone master "https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng" "xiaoqingfeng" homeredirect luci-app-homeredirect

git_sparse_clone develop "https://github.com/Ysurac/openmptcprouter-feeds" "openmptcp" luci-app-snmpd \
luci-app-packet-capture luci-app-mail msmtp
git_sparse_clone master "https://github.com/immortalwrt/immortalwrt" "immortal" package/kernel/rtl88x2bu \
package/kernel/r8168 package/kernel/rtl8821cu package/kernel/rtl8189es package/network/utils/fullconenat \
package/utils/mhz package/emortal/default-settings
#package/emortal/autocore  package/emortal/automount

git_sparse_clone master "https://github.com/coolsnowwolf/luci" "leluci" applications/luci-app-accesscontrol applications/luci-app-adbyby-plus \
applications/luci-app-airplay2 applications/luci-app-amule applications/luci-app-arpbind applications/luci-app-asterisk applications/luci-app-autoreboot \
applications/luci-app-baidupcs-web applications/luci-app-cifs-mount applications/luci-app-cifsd applications/luci-app-diskman \
applications/luci-app-docker applications/luci-app-easymesh applications/luci-app-filetransfer applications/luci-app-guest-wifi applications/luci-app-haproxy-tcp \
applications/luci-app-ipsec-server applications/luci-app-ipsec-vpnd applications/luci-app-kodexplorer applications/luci-app-mosdns \
applications/luci-app-music-remote-center applications/luci-app-mwan3helper applications/luci-app-n2n applications/luci-app-netdata applications/luci-app-nfs \
applications/luci-app-nps applications/luci-app-openvpn-server applications/luci-app-pgyvpn applications/luci-app-phtunnel applications/luci-app-pppoe-relay \
applications/luci-app-pptp-server applications/luci-app-ps3netsrv applications/luci-app-pushbot applications/luci-app-qbittorrent-simple applications/luci-app-ramfree \
applications/luci-app-rclone applications/luci-app-socat applications/luci-app-softethervpn applications/luci-app-syncdial applications/luci-app-turboacc \
applications/luci-app-unblockmusic applications/luci-app-usb-printer applications/luci-app-uugamebooster applications/luci-app-v2ray-server applications/luci-app-verysync \
applications/luci-app-vlmcsd applications/luci-app-vsftpd applications/luci-app-webadmin applications/luci-app-webdav applications/luci-app-wrtbwmon \
applications/luci-app-xlnetacc applications/luci-app-zerotier libs/luci-lib-fs
#mv -f applications luciapp
#rm -rf luciapp/{luci-app-qbittorrent,luci-app-cpufreq}
#git_sparse_clone master "https://github.com/immortalwrt/luci" "immluci" applications protocols/luci-proto-minieap
git_sparse_clone master "https://github.com/immortalwrt/luci" "immluci" applications/luci-app-cpufreq applications/luci-app-advancedsetting applications/luci-app-cd8021x \
applications/luci-app-filebrowser applications/luci-app-fileassistant applications/luci-app-gowebdav applications/luci-app-gost \
applications/luci-app-unblockneteasemusic-go applications/luci-app-unblockneteasemusic applications/luci-app-usb3disable applications/luci-app-cpulimit \
applications/luci-app-timewol protocols/luci-proto-minieap
#mv -n applications/* luciapp/; rm -rf applications

for ipk in $(ls -d luciapp/!(luci-app-rclone|luci-app-mwan3|luci-app-transmission)/); do
    if [[ $(ls $ipk/po | wc -l) -gt 3 ]]; then
    rm -rf $ipk
    fi
done

git_sparse_clone master "https://github.com/coolsnowwolf/lede" "leanlede" package/lean package/network/services/shellsync

#mv -n luciapp/* ./ ; rm -Rf luciapp
#mv -n luciapp/!(luci-app-noddos|luci-app-cshark|luci-app-dnscrypt-proxy|luci-app-https-dns-proxy|luci-app-ssr-mudb-server|luci-app-ledtrig-*) ./ ; rm -Rf luciapp
#rm -rf luci-app-noddos
#rm -rf luci-app-cshark & rm -rf luci-app-dnscrypt-proxy & rm -rf luci-app-https-dns-proxy & rm -rf luci-app-ssr-mudb-server
#rm -rf luci-app-ledtrig-*
#rm -rf luci-app-samba
mv -n lean/* ./ ; rm -Rf lean
#mv -n liep/* ./ ; rm -Rf liep
mv -n openwrt-app-actions/applications/* ./;rm -rf openwrt-app-actions
rm -Rf */.git
# mv -n openwrt-passwall/* ./ ; rm -Rf openwrt-passwall
# mv -n openwrt-package/* ./ ; rm -Rf openwrt-package

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore

sed -i \
-e 's?include \.\./\.\./\(lang\|devel\)?include $(TOPDIR)/feeds/packages/\1?' \
-e 's?2. Clash For OpenWRT?3. Applications?' \
-e 's?\.\./\.\./luci.mk?$(TOPDIR)/feeds/luci/luci.mk?' \
-e 's/ca-certificates/ca-bundle/' \
*/Makefile

sed -i 's/luci-lib-ipkg/luci-base/g' luci-app-store/Makefile
sed -i "/minisign:minisign/d" luci-app-dnscrypt-proxy2/Makefile
#sed -i 's/+dockerd/+dockerd +cgroupfs-mount/' luci-app-docker*/Makefile
#sed -i '$i /etc/init.d/dockerd restart &' luci-app-docker*/root/etc/uci-defaults/*
sed -i 's/+libcap /+libcap +libcap-bin /' luci-app-openclash/Makefile
sed -i 's/\(+luci-compat\)/\1 +luci-theme-argon/' luci-app-argon-config/Makefile
#sed -i 's/\(+luci-compat\)/\1 +luci-theme-argonne/' luci-app-argonne-config/Makefile
sed -i 's/ +uhttpd-mod-ubus//' luci-app-packet-capture/Makefile
sed -i 's/	ip.neighbors/	luci.ip.neighbors/' luci-app-wifidog/luasrc/model/cbi/wifidog/wifidog_cfg.lua
sed -i "s/nas/services/g" `grep nas -rl luci-app-fileassistant`
sed -i "s/NAS/Services/g" `grep NAS -rl luci-app-fileassistant`
find -type f -name Makefile -exec sed -ri  's#mosdns[-_]neo#mosdns#g' {} \;

bash diy/create_acl_for_luci.sh -a >/dev/null 2>&1
bash diy/convert_translation.sh -a >/dev/null 2>&1

rm -rf create_acl_for_luci.err & rm -rf create_acl_for_luci.ok
rm -rf create_acl_for_luci.warn

exit 0
