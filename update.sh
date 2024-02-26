#wget https://github.com/${GitUser}/
GitUser="arivpnstores"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://raw.githubusercontent.com/${GitUser}/xraylite/main/version )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/xraylite/main/newversion | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo ""
                                                           
echo -e "$green▀████▀ ▀███▀▀████▀   ▀████▄     ▄███▀███▀▀▀██▄▀████▀ ▀███▀ $NC"
echo -e "$green  ██   ▄█▀    ██       ████    ████   ██   ▀██▄ ██   ▄█▀   $NC"
echo -e "$green  ██ ▄█▀      ██       █ ██   ▄█ ██   ██   ▄██  ██ ▄█▀     $NC"
echo -e "$green  █████▄      ██       █  ██  █▀ ██   ███████   █████▄     $NC"
echo -e "$green  ██  ███     ██     ▄ █  ██▄█▀  ██   ██        ██  ███    $NC"
echo -e "$green  ██   ▀██▄   ██    ▄█ █  ▀██▀   ██   ██        ██   ▀██▄  $NC"
echo -e "$green▄████▄   ███▄████████████▄ ▀▀  ▄████▄████▄    ▄████▄   ███▄$NC"
                                                           
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$back_text                 \e[30m[\e[$box CHECK NEW UPDATE\e[30m ]                   \e[m"
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "   \e[$below VVERSION NOW >> $Info1"
echo -e "   \e[$below SSTATUS UPDATE >> $sts"
echo -e ""
echo -e "       \e[1;31mWould you like to proceed?\e[0m"
echo ""
echo -e "            \e[0;32m[ Select Option ]\033[0m"
echo -e "     \e[$number [1]\e[m \e[$below CCheck Script Update Now\e[m"
echo -e "     \e[$number [x]\e[m \e[$below BBack To Menu\e[m"
echo -e ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "\e[$line"
read -p "PPlease Choose 1 or x : " option2
case $option2 in
1)
version=$(cat /home/ver)
new_version=$( curl https://raw.githubusercontent.com/${GitUser}/xraylite/main/newversion | grep $version )
if [ $version = $new_version ]; then
clear
echo ""
echo -e "\e[1;31mChecking New Version, Please Wait...!\e[m"
sleep 3
clear
echo -e "\e[1;31mUpdate Not Available\e[m"
echo ""
clear
sleep 1
echo -e "\e[1;36mYou Have The Latest Version\e[m"
echo -e "\e[1;31mThankyou.\e[0m"
sleep 2
update
fi
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/${GitUser}/xraylite/main/update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
wget -q -O /usr/bin/autoreboot "https://raw.githubusercontent.com/arivpnstores/xraylite/main/autoreboot.sh"
wget -q -O /usr/bin/restarts "https://raw.githubusercontent.com/arivpnstores/xraylite/main/restarts.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/arivpnstores/xraylite/main/tendang.sh"
wget -q -O /usr/bin/clearlog "https://raw.githubusercontent.com/arivpnstores/xraylite/main/clearlog.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/arivpnstores/xraylite/main/running.sh"
wget -q -O /usr/bin/cek-trafik "https://raw.githubusercontent.com/arivpnstores/xraylite/main/cek-trafik.sh"
wget -q -O /usr/bin/cek-speed "https://raw.githubusercontent.com/arivpnstores/xraylite/main/speedtes_cli.py"
wget -q -O /usr/bin/cek-bandwidth "https://raw.githubusercontent.com/arivpnstores/xraylite/main/cek-bandwidth.sh"
wget -q -O /usr/bin/cek-ram "https://raw.githubusercontent.com/arivpnstores/xraylite/main/ram.sh"
wget -q -O /usr/bin/limit-speed "https://raw.githubusercontent.com/arivpnstores/xraylite/main/limit-speed.sh"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menu-vmess.sh"
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menu-ss.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menu-trojan.sh"
wget -q -O /usr/bin/menun-ssh "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menun-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menu-backup.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/arivpnstores/xraylite/main/usernew.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/arivpnstores/xraylite/main/menu.sh"
wget -q -O /usr/bin/wbm "https://raw.githubusercontent.com/arivpnstores/xraylite/main/webmin.sh"
wget -q -O /usr/bin/changer "https://raw.githubusercontent.com/arivpnstores/xraylite/main/changer.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/arivpnstores/xraylite/main/xp.sh"
wget -q -O /usr/bin/addhost  "https://raw.githubusercontent.com/arivpnstores/xraylite/main/addhost.sh"
wget -q -O /usr/bin/genssl  "https://raw.githubusercontent.com/arivpnstores/xraylite/main/genssl.sh"
wget -q -O /usr/bin/fix "https://raw.githubusercontent.com/arivpnstores/xraylite/main/cf.sh"
wget -q -O /usr/bin/trialssh "https://raw.githubusercontent.com/arivpnstores/xraylite/main/trialssh.sh"
wget -q -O /etc/issue.net "https://raw.githubusercontent.com/arivpnstores/xraylite/main/issue.net"
wget -q -O /root/versi "https://raw.githubusercontent.com/arivpnstores/xraylite/main/versibasic"
wget -q -O /usr/bin/updatsc "https://raw.githubusercontent.com/arivpnstores/xraylite/main/update.sh"
wget -q -O /usr/bin/backup "https://raw.githubusercontent.com/arivpnstores/xraylite/main/backup.sh"
wget -q -O /usr/bin/renel "https://raw.githubusercontent.com/arivpnstores/xraylite/main/renel.sh"
wget -q -O /usr/bin/cekl "https://raw.githubusercontent.com/arivpnstores/xraylite/main/cekl.sh"
wget -q -O /usr/bin/dell "https://raw.githubusercontent.com/arivpnstores/xraylite/main/dell.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/arivpnstores/xraylite/main/add-vless.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/arivpnstores/xraylite/main/update.sh"
wget -q -O /usr/bin/xolpanel "https://raw.githubusercontent.com/ARISCTUNNEL/xolpanel/main/cupu.sh"
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/cekl
chmod +x /usr/bin/dell
chmod +x /usr/bin/renel
chmod +x /usr/bin/usernew
chmod +x /usr/bin/autoreboot
chmod +x /usr/bin/addhost
chmod +x /usr/bin/genssl
chmod +x /usr/bin/restarts
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearlog
chmod +x /usr/bin/running
chmod +x /usr/bin/cek-trafik
chmod +x /usr/bin/cek-speed
chmod +x /usr/bin/cek-bandwidth
chmod +x /usr/bin/cek-ram
chmod +x /usr/bin/limit-speed
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-ss
chmod +x /usr/bin/updatsc
chmod +x /usr/bin/slowdns
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/trialssh
chmod +x /usr/bin/menun-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/backup
chmod +x /usr/bin/wbm
chmod +x /usr/bin/xp
chmod +x /usr/bin/changer
chmod +x /usr/bin/fix
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/update
chmod +x /usr/bin/xolpanel
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/${GitUser}/xraylite/main/version )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
clear
clear
menu
;;
esac
