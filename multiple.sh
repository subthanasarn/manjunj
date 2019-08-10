	echo ""
	echo "1 ไฟล์เชื่อมต่อได้ไม่จำกัดเครื่อง"
	echo ""
	read -p "   เปลียนเป็นไม่จำกัดเครื่องหรือไม่ Y/n :" selet
if [[ "$selet" = "Y" || "$selet" = "y" ]]; then
sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '28d' /etc/openvpn/server.conf
sed -i '20d' /etc/openvpn/client-common.txt
echo "duplicate-cn" >> /etc/openvpn/server.conf
echo ""
echo "ปรับเปลี่ยนระบบของเซิฟเวอร์ เรียบร้อย"
echo ""
service openvpn restart
