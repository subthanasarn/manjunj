IP=$(wget -qO- ipv4.icanhazip.com);
if [[ "$IP" = "" ]]; then
    IP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | grep -v '192.168'`;
fi
echo ""
echo ""
echo "    =============== OS-32 & 64-bit =================    "
echo "    #                                              #    "
echo "    #       AUTOSCRIPT CREATED BY PIRAKIT          #    "
echo "    #      -----------About Us------------         #    "
echo "    #      OS  DEBIAN 7-8-9  OS  UBUNTU 14-16      #    "
echo "    #    Truemoney Wallet : 096-746-2978           #    "
echo "    #               { VPN / SSH }                  #    "
echo "    #                  NAMNUEA                     #    "
echo "    #         BY : Pirakit Khawpleum               #    "
echo "    #    FB : https://m.me/pirakrit.khawplum       #    "
echo "    #                                              #    "
echo "    =============== OS-32 & 64-bit =================    "
echo ""
echo "    ~¤~ ๏[-ิ_•ิ]๏ ~¤~ Admin MyGatherBK ~¤~ ๏[-ิ_•ิ]๏ ~¤~ "
echo ""
echo " ไอพีเซิฟ:$IP "
echo ""
echo ""
