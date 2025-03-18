#!/bin/bash 
echo "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1h1YW5udHg5MC90ZXN0MTIzL3JlZnMvaGVhZHMvbWFpbi9kYnRlc3QK" | base64 -d > ull.txt
ull=(`cat "ull.txt"`)
clear
curl -X GET ${ull[0]} | grep $1 > dsip.txt
lines=(`cat "dsip.txt"`)
#KTra user
if [ $1 != "${lines[0]}" ]; then
        echo "Sai tên USER VIP. Hãy kiểm tra lại !!!"
        exit
fi

clear
echo "Danh sách VPS hiện có là: "
for line in "${lines[@]}"; do
    echo $line
done

read -p "Nhập IPV4 cần xử lý: " ipv4
curl -X GET ${ull[0]} | grep ___vps___$ipv4 > vip.txt
clear
ipvip=(`cat "vip.txt"`)

#KTra dsach
if [[ " ${lines[@]} " =~ " $ipv4 " ]]; then
        echo "IPV4 vừa nhập là: $ipv4"
        id=${ipvip[1]}
	acc=${ipvip[2]}
else
        echo "IPV4 Không tồn tại "
        exit
fi

echo $id $acc
ul_k=https://raw.githubusercontent.com/Xuanntx90/test123/refs/heads/main/kid
###acc=DKD1
curl -X GET $ul_k | grep $acc > kk.txt
k_ii=(`cat "kk.txt"`)
kbm="dop_v1_${k_ii[1]}"
echo "$kbm" > kbm

    echo  "Chọn Menu chức năng sau: "
    echo  " 1/ Off VPS"
    echo  " 2/ On VPS"
    echo  " 3/ Reboot VPS"
    echo ""
    echo  "Chú ý:"
    echo  "Reboot VPS --> Đợi 5ph rồi Login thử nhé"
    echo  "Nếu KO Login được ---> Chọn Off VPS, chờ 15ph"
    echo  "Sau đó, chọn On VPS và 5ph sau Login lại"
    echo  "---------------------------------------------"
    echo -e "\e[5;33m----------------MMO365.PRO.VN---------------\e[0m"
    echo -e "\e[5;33m Fb: Xuân PT -- Zalo: 0967.15.36.90\e[0m"
    echo -e "\e[5;33m Web chuyên cung cấp:\e[0m"
    echo -e "\e[5;33m VPS Trail, VN và Ngoại chính hãng\e[0m"
    echo -e "\e[5;33m Acc Trail, Code, Tools MMO\e[0m"
    echo -e "\e[5;33m Nhận Setup Web 5G-VPN, ShopClone bán Acc, TK\e[0m"
    echo -e "\e[5;33m-------------MMO365--Uy-Tín-100%-------------\e[0m"
    echo  "---------------------------------------------"
    echo  "KO SPAM: on, off, reboot VPS liên tục"
 read -p "Nhập số tương ứng với lựa chọn: " so

case $so in
        1)
                bash <(curl -Ls https://raw.githubusercontent.com/XPTMMO/du-an_rs/refs/heads/main/ho1.sh) $id $kbm
                ;;
        2)
                bash <(curl -Ls https://raw.githubusercontent.com/XPTMMO/du-an_rs/refs/heads/main/ho2.sh) $id $kbm
                ;;
        3)
                bash <(curl -Ls https://raw.githubusercontent.com/XPTMMO/du-an_rs/refs/heads/main/hrs.sh) $id $kbm
                ;;
        *)
                echo "Lựa chọn không hợp lệ. Vui lòng thử lại."
                ;;
esac


