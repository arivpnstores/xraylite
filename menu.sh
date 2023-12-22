#!/bin/bash
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear
#total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
GREEN='\033[0;32m'
RED='\033[0;31m'
IPVPS=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/arivpnstores/permission/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $IPVPS | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $IPVPS \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/ARI_VPN_STORE"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6281327393959"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
NS=$(cat /etc/xray/dns)
CITY=$(curl -s ipinfo.io/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
Name=$(curl -sS https://raw.githubusercontent.com/arivpnstores/permission/main/ip | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/arivpnstores/permission/main/ip | grep $MYIP | awk '{print $3}')
fi

# =========================================
#vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
#let vla=$vlx/2
#vmc=$(grep -c -E "^### " "/etc/xray/config.json")
#let vma=$vmc/2
#ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

#trx=$(grep -c -E "^#! " "/etc/xray/config.json")
#let tra=$trx/2
#ssx=$(grep -c -E "^## " "/etc/xray/config.json")
#let ssa=$ssx/2
vmess=$(cat /root/akun/vmess/.vmess.db | wc -l)
vless=$(cat /root/akun/vless/.vless.db | wc -l)
trojan=$(cat /root/akun/trojan/.trojan.db | wc -l)
ss=$(cat /root/akun/shadowsocks/.shadowsocks.db | wc -l)
ssh=$(cat /root/akun/ssh/ssh.db | wc -l)

#total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
COLOR1='\033[0;35m'
COLOR2='\033[0;39m'
clear

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"


# // Exporting URL Host
export Server_URL="raw.githubusercontent.com/Zeastore/test/main"
export Server1_URL="raw.githubusercontent.com/Zeastore/limit/main"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther=".geovpn"
export MYIP=$( curl -s https://ipinfo.io/ip/ )
Name=$(curl -sS https://raw.githubusercontent.com/arivpnstores/permission/main/ip | grep $MYIP | awk '{print $2}')
Exp=$(curl -sS https://raw.githubusercontent.com/arivpnstores/permission/main/ip | grep $MYIP | awk '{print $3}')

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi

# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10)
NS=$(cat /etc/xray/dns)
CITY=$(curl -s ipinfo.io/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
Name=$(curl -sS https://raw.githubusercontent.com/arivpnstores/permission/main/ip | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/arivpnstores/permission/main/ip | grep $MYIP | awk '{print $3}')
fi

###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"



# // Exporting Network Interface
export NETWORK_IFACE="$(ip route show to default | awk '{print $5}')"

data_ip="https://raw.githubusercontent.com/arivpnstores/permission/main/ip"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))


# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
rm -fr /etc/xray/domain
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo $host > /etc/xray/domain
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew gen-ssl"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
systemctl stop xray
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew gen-ssl... " 
sleep 2
/root/.acme.sh/acme.sh --upgrade
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew gen-ssl done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl start nginx
systemctl start xray
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
ttoday="$(vnstat | grep today | awk '{print $8" "substr ($9, 1, 3)}' | head -1)"
tmon="$(vnstat -m | grep `date +%G-%m` | awk '{print $8" "substr ($9, 1 ,3)}' | head -1)"
export sem=$( curl -s https://raw.githubusercontent.com/arivpnstores/xraylite/main/versions)
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
clear
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "                      << INFORMASI VPS >>                    \E[0m" | lolcat
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "  ${BLUE}• ${GREEN}Sever Uptime        ${NC}= $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "  ${BLUE}• ${GREEN}Current Time        ${NC}= $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "  ${BLUE}• ${GREEN}Operating System    ${NC}= $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g')( $(uname -m))"
echo -e "  ${BLUE}• ${GREEN}Current Domain      ${NC}= $( cat /etc/xray/domain )"
echo -e "  ${BLUE}• ${GREEN}SLOWDNS Domain      ${NC}= $NS"
echo -e "  ${BLUE}• ${GREEN}Server IP           ${NC}= $IPVPS"
echo -e "  ${BLUE}• ${GREEN}ISP-VPS             ${NC}= $ISP"
echo -e "  ${BLUE}• ${GREEN}City                ${NC}= $CITY"
echo -e "  ${BLUE}• ${GREEN}RAM                 ${NC}= $uram / $tram"
echo -e "  ${BLUE}• ${GREEN}CPU                 ${NC}= $cpu_usage"
echo -e "  ${BLUE}• ${GREEN}Clients Name        ${NC}= ${YELLOW}$Name ${NC}"
echo -e "  ${BLUE}• ${GREEN}Script Exfire       ${NC}= ${YELLOW}$Exp (${NC}${RED} $dayleft Days ${NC}${YELLOW})${NC}"
echo -e "  ${BLUE}• ${GREEN}Developer           ${NC}= AriVPN Tunneling ${NC}"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "                     << STATUS SERVICE >>                    \E[0m" | lolcat
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "      ${COLOR2}[ SSH Websocket${NC}: ${GREEN}ON ${NC}]  [ NGINX${NC}: ${GREEN}$resngx ] [ XRAY${NC} : ${GREEN}$resv2r ] "
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│  \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN       SHADOWSOCKS$NC  $COLOR1│"
echo -e "$COLOR1│  \033[0m ${Blue} $ssh1        $vma           $vla          $tra               $ssa   $NC    $COLOR1│"
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "                     << MENU TUNNELING >>                    \E[0m" | lolcat
echo -e "$COLOR1└────────────────────────────────────────────────────────────┘${NC}"

echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[39;1;92m                    ⇱ STATUS PENGUNAAN ⇲                        \E[0m"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "             ${LIGHT} Today  : $ttoday"
echo -e "             ${LIGHT} Monthly: $tmon"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[39;1;92m                     ⇱ MENU SERVICE ⇲                         \E[0m"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e " ${BICyan}[${BIWhite}01${BICyan}]${RED} •${NC} ${YELLOW}SSH ${GREEN}MENU        $NC  ${BICyan}[${BIWhite}12${BICyan}]${RED} • ${NC}${YELLOW}GEN-SSL / CERTV $NC"
echo -e " ${BICyan}[${BIWhite}02${BICyan}]${RED} •${NC} ${YELLOW}VMESS ${GREEN}MENU      $NC  ${BICyan}[${BIWhite}13${BICyan}]${RED} • ${NC}${YELLOW}BANNER CHAGE $NC"
echo -e " ${BICyan}[${BIWhite}03${BICyan}]${RED} •${NC} ${YELLOW}VLESS ${GREEN}MENU      $NC  ${BICyan}[${BIWhite}14${BICyan}]${RED} • ${NC}${YELLOW}CEK RUNNING SERVICE $NC"
echo -e " ${BICyan}[${BIWhite}04${BICyan}]${RED} •${NC} ${YELLOW}TROJAN ${GREEN}MENU     $NC  ${BICyan}[${BIWhite}15${BICyan}]${RED} • ${NC}${YELLOW}CEK TRAFIC $NC"
echo -e " ${BICyan}[${BIWhite}05${BICyan}]${RED} •${NC} ${YELLOW}S-SOCK ${GREEN}MENU     $NC  ${BICyan}[${BIWhite}16${BICyan}]${RED} • ${NC}${YELLOW}SPEEDTEDT  $NC"
echo -e " ${BICyan}[${BIWhite}06${BICyan}]${RED} •${NC} ${YELLOW}MENU ${GREEN}BACKUP     $NC  ${BICyan}[${BIWhite}17${BICyan}]${RED} • ${NC}${YELLOW}CEK BANDWIDTH USE $NC"
echo -e " ${BICyan}[${BIWhite}07${BICyan}]${RED} •${NC} ${YELLOW}AUTO ${GREEN}REBOOT     $NC  ${BICyan}[${BIWhite}18${BICyan}]${RED} • ${NC}${YELLOW}LIMMIT SPEED $NC"
echo -e " ${BICyan}[${BIWhite}08${BICyan}]${RED} •${NC} ${YELLOW}REBOOT          $NC  ${BICyan}[${BIWhite}19${BICyan}]${RED} • ${NC}${YELLOW}WEBMIN $NC"
echo -e " ${BICyan}[${BIWhite}09${BICyan}]${RED} •${NC} ${YELLOW}RESTART ${GREEN}SERVICE $NC  ${BICyan}[${BIWhite}20${BICyan}]${RED} • ${NC}${YELLOW}SCRIPT INFO $NC"
echo -e " ${BICyan}[${BIWhite}10${BICyan}]${RED} •${NC} ${YELLOW}TRIAL           $NC  ${BICyan}[${BIWhite}21${BICyan}]${RED} • ${NC}${YELLOW}CLEAR LOG $NC"
echo -e " ${BICyan}[${BIWhite}11${BICyan}]${RED} •${NC} ${YELLOW}ADD ${GREEN}HOST        $NC  ${BICyan}[${BIWhite}22${BICyan}]${RED} • ${NC}${YELLOW}FIX MISSING POINTING $NC"
echo -e " ${BICyan}[${BIWhite} X ${BICyan}] TYPE X FOR EXIT ${BICyan}${BIYellow}${BICyan}${NC}"  
echo -e " ${RED}"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " ${BICyan}[${BIWhite}23${BICyan}]${RED} •${NC} ${YELLOW}INSTALL ${GREEN}UDP        $NC"
echo -e " ${BICyan}[${BIWhite}24${BICyan}]${RED} •${NC} ${YELLOW}GANTI PW VPS           $NC"
echo -e " ${BICyan}[${BIWhite}25${BICyan}]${RED} •${NC} ${YELLOW}INSTALL BOT           $NC"
echo -e " ${BICyan}[${BIWhite} 99 ${BICyan}] UPDATE SC ${BICyan}${BIYellow}${BICyan}${NC}"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "${BICyan}┌──────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan}│ ${BOLD}${GREEN}Client    = $Name                           ${NC}"
echo -e "${BICyan}│ ${BOLD}${RED}Expired   = $Exp                            ${NC}"
echo -e "${BICyan}│ ${BOLD}${YELLOW}Developer = ARISCTUNNEL                   ${NC}"
echo -e "${BICyan}│ ${BOLD}${PURPLE}Version   = SUPER LTS                       ${NC}"
echo -e "${BICyan}└──────────────────────────────────────────────────┘${NC}"

echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menun-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; menu-ss ;;
6) clear ; menu-backup ;;
7) clear ; autoreboot ;;
8) clear ; reboot ;;
9) clear ; restarts ;;
10) clear ; trialssh ;;
11) clear ; addhost ;;
12) clear ; genssl ;;
13) clear ; nano /etc/issue.net ;;
14) clear ; running ;;
15) clear ; cek-trafik ;;
16) clear ; cek-speed ;;
17) clear ; cek-bandwidth ;;
#18) clear ; cek-ram ;;
18) clear ; limit-speed ;;
19) clear ; wbm ;;
20) clear ; cat /root/log-install.txt ;;
21) clear ; clearlog ;;
99) clear ; update ;;
22) clear ; fix ;;
23) clear ; clear ; wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
24) clear ; passwd ;;
25) clear ; xolpanel ;;

0) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; menu ;;
esac
