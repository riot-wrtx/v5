#wget https://github.com/${GitUser}/
GitUser="riot5758"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
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
clear
echo ""                                                         
figlet 'UPDATE'
read -n 1 -s -r -p "Press any key to RUN UPDATE"
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://raw.githubusercontent.com/${GitUser}/v5/main/update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 5
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/usernew.sh"
wget -q -O /usr/bin/auto-reboot "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/auto-reboot.sh"
wget -q -O /usr/bin/restart "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/restart.sh"
wget -q -O /usr/bin/tendang "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/tendang.sh"
wget -q -O /usr/bin/clearcache "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/clearcache.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/running.sh"
wget -q -O /usr/bin/speedtest "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/speedtest_cli.py"
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-vless.sh"
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-vmess.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-trojan.sh"
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-ssh.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-backup.sh"
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu.sh"
wget -q -O /usr/bin/menu-webmin "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-webmin.sh"
wget -q -O /usr/bin/xp "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/xp.sh"
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/riot-wrtx/v5/main/update.sh"
wget -q -O /usr/bin/add-host "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/add-host.sh"
wget -q -O /usr/bin/certv2ray "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/certv2ray.sh"
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-set.sh"
wget -q -O /usr/bin/about "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/about.sh"
#wget -q -O /usr/bin/add4 "https://raw.githubusercontent.com/riot5758/permission/main/add4.sh"
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-backup.sh"
wget -q -O /usr/bin/trial "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/trial.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/riot-wrtx/v5/main/ssh/usernew.sh"
wget -q -O /usr/bin/add-tr "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/add-tr.sh"
wget -q -O /usr/bin/del-tr "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/del-tr.sh"
wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/cek-tr.sh"
wget -q -O /usr/bin/trialtrojan "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/trialtrojan.sh"
wget -q -O /usr/bin/renew-tr "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/renew-tr.sh"
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/add-ws.sh"
wget -q -O /usr/bin/del-ws "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/del-ws.sh"
wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/cek-ws.sh"
wget -q -O /usr/bin/renew-ws "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/renew-ws.sh"
wget -q -O /usr/bin/trialvmess "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/trialvmess.sh"
wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/add-vless.sh"
wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/del-vless.sh"
wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/cek-vless.sh"
wget -q -O /usr/bin/renew-vless "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/renew-vless.sh"
wget -q -O /usr/bin/trialvless "https://raw.githubusercontent.com/riot-wrtx/v5/main/xray/trialvless.sh"
wget -q -O /usr/bin/menu-trial "https://raw.githubusercontent.com/riot-wrtx/v5/main/menu/menu-trial.sh"
chmod +x /usr/bin/usernew
chmod +x /usr/bin/auto-reboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearcache
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/menu-vless
chmod +x /usr/bin/menu-vmess
chmod +x /usr/bin/menu-trojan
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/add-host
chmod +x /usr/bin/certv2ray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/about
chmod +x /usr/bin/add4
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/trial
chmod +x /usr/bin/usernew
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/del-tr
chmod +x /usr/bin/cek-tr
chmod +x /usr/bin/trialtrojan
chmod +x /usr/bin/renew-tr
chmod +x /usr/bin/add-ws 
chmod +x /usr/bin/del-ws
chmod +x /usr/bin/cek-ws
chmod +x /usr/bin/renew-ws
chmod +x /usr/bin/trialvmess
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/del-vless
chmod +x /usr/bin/cek-vless
chmod +x /usr/bin/renew-vless
chmod +x /usr/bin/trialvless
chmod +x /usr/bin/menu-trial
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/${GitUser}/v5/main/version )
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
