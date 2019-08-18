#!/bin/bash
rm -f install.sh
scrip="https://namnuea.000webhostapp.com/scrip"
clear
cd /usr/bin
wget -q -O cr "$scrip/cr"
chmod +x /usr/bin/cr
if [[ $(id -g) != "0" ]] ; then
    echo ""
    echo "Scrip : สั่งรูทคำสั่ง [ sudo -i ] ก่อนรันสคริปนี้  "
    echo ""
    exit
fi
zenon=$2

if [[  ! -e /dev/net/tun ]] ; then
    echo "Scrip : TUN/TAP device is not available."
fi
cd
if [[ -e /etc/debian_version ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
if [[ -e /etc/yum ]]; then
VERSION_ID=$(cat /etc/os-release | grep "VERSION_ID")
fi
IP=$(wget -qO- ipv4.icanhazip.com);
if [[ $zenon == "" ]]
then
clear
cr
cd
clear
echo ""
echo -e "\e[031;1m

=============== OS-32 & 64-bit ===============
       >>>>> สคริปท์อัตโนมัติ เพื่อการศีกษา<<<<<
        จัดทำโดย Pirakit Khawpleum "


echo ""
echo "----------------------------------------------"
echo "|||||||||| PLEASE SELECT MUNU NUMBER |||||||||"
echo "----------------------------------------------"
echo "    หมายเหตุ ถ้าจะติดตั้ง L2TP ให้ติดตั้ง OpenVPN ก่อน                               "
echo ""
echo "   [ 1 ] OpenVPN Debian7-8-9 & Ubuntu14.4-16.4"
echo "   [ 2 ] L2TP ได้ทุก OS                          "
echo "----------------------------------------------"
read -p " ━━ Namber : " opcao
else
opcao=$zenon
fi
case $opcao in
 1 | 01 )
clear
cd
cr
echo "━━━━━━━━━━━━━แน่ใจคุณต้องการรันระบบ OpenVPN━━━━━━━━━━━━━"
    read -p "        ╰━━ ( Y/n ) : " -e -i y Confirn
    if [[ "$Confirn" = "y" || "$Confirn" = "Y" ]]; then
wget -q -O install "$scrip/install_openvpn"
bash install
exit
elif [[ "$Confirn" = "n" || "$Confirn" = "N" ]]; then
clear
clear
wget -O install "$scrip/install"
bash install
fi
;;
2 | 02)
clear
cd
cr
echo "━━━━━━━━━━━━━แน่ใจคุณต้องการรันระบบ L2TP━━━━━━━━━━━━━"
    read -p "        ╰━━ ( Y/n ) : " -e -i y Confirn
    if [[ "$Confirn" = "y" || "$Confirn" = "Y" ]]; then
wget -q -O l2tp "$scrip/l2tp"
chmod +x l2tp
./l2tp
exit
elif [[ "$Confirn" = "n" || "$Confirn" = "N" ]]; then
clear
clear
wget -O install "$scrip/install"
bash install
fi
;;
$opcao )
clear
cd
cr
echo "    ━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "           PRATYASART THEEJANMART THANK YOU        "
echo "    ━━━━━━━━━━━━━━━━━━━━━━━━━"
exit 0
;;
esac
