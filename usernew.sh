#!/bin/bash

# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
export ungu='\033[0;35m'



# Getting

domain=$(cat /etc/xray/domain)
sldomain=`cat /etc/xray/dns`
cdndomain=$(cat /root/awscdndomain)
slkey=$(cat /etc/slowdns/server.pub)
clear
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                 ⇱ CREATE ACCOUNT ⇲            \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "${CYAN}"
read -p "Username : " Login
read -p "Password : " Pass
read -p "Quota : " quota
read -p "Limit IP : " limit
read -p "Expired (Days): " masaaktif

IP=$(wget -qO- ipinfo.io/ip);
ws="$(cat ~/log-install.txt | grep -w "Websocket TLS" | cut -d: -f2|sed 's/ //g')"
ws2="$(cat ~/log-install.txt | grep -w "Websocket None TLS" | cut -d: -f2|sed 's/ //g')"

ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
clear
systemctl stop client-sldns
systemctl stop server-sldns
pkill sldns-server
pkill sldns-client
systemctl enable client-sldns
systemctl enable server-sldns
systemctl start client-sldns
systemctl start server-sldns
systemctl restart client-sldns
systemctl restart server-sldns
systemctl restart ws-tls
systemctl restart ws-nontls
systemctl restart ssh-ohp
systemctl restart rc-local
systemctl restart dropbear-ohp
systemctl restart openvpn-ohp
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
if [ ! -e /etc/ssh ]; then
  mkdir -p /etc/ssh
fi

if [ -z ${quota} ]; then
  quota="0"
fi

c=$(echo "${quota}" | sed 's/[^0-9]*//g');
d=$(( ${c} * 1024*1024*1024 ));

if [[ ${c} != "0" ]]; then
echo "${d}" > /etc/ssh/${Login}
fi
DATADB=$(cat /etc/ssh/.ssh.db | grep "^###" | grep -w "${Login}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${Login}\b/d" /etc/ssh/.ssh.db
fi
echo "### ${Login} ${masaaktif} ${Pass} ${quota} ${limit}" >>/etc/ssh/.ssh.db
clear
echo -e ""
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e " ${COLBG1}     **⟨ SSH Account ⟩**    ${NC} "
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "${LIGHT}Username: $Login"
echo -e "Password: $Pass"
echo -e "Created: $hariini"
echo -e "Quota  : ${quota} GB"
echo -e "Limit IP  : ${limit} USER"
echo -e "Expired: $expi"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "IP/Host: $IP"
echo -e "Domain SSH: $domain"
echo -e "PubKey : $slkey"
echo -e "Nameserver: $sldomain"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "OpenSSH: 22"
echo -e "Dropbear: 44, 69, 143"
echo -e "SSH UDP: 1-2288"
echo -e "STunnel4: 442,222,2096"
echo -e "SlowDNS port: 53,5300,8080"
echo -e "SSH Websocket SSL/TLS: 443"
echo -e "SSH Websocket HTTP: 80,8080"
echo -e "SSH Websocket Direct: 8080"
echo -e "OPEN VPN: 1194"
echo -e "BadVPN UDPGW: 7100,7200,7300"
echo -e "Proxy Squid: [ON]"
echo -e "OVPN TCP: http://$IP:81/tcp.ovpn"
echo -e "OVPN UDP: http://$IP:81/udp.ovpn"
echo -e "OVPN SSL: http://$IP:81/ssl.ovpn"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "Payload Websocket HTTP"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo -e "${CYAN}       Script By ARISCTUNNEL" 
echo -e "\033[1;36m**━━━━━━━━━━━━━━━━━━━━━━━━━━**\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
