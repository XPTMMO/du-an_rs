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
else
        echo "IPV4 Không tồn tại "
        exit
fi

#echo $id $acc

    echo  "Chọn Menu chức năng sau: "
    echo  " 1/ Off VPS"
    echo  " 2/ On VPS"
    echo  " 3/ Reboot VPS"
    echo  "Chú ý:"
    echo  "Reboot VPS --> Đợi 5ph rồi Login thử nhé"
    echo  "Nếu KO Login được ---> Chọn Off VPS, chờ 15ph"
    echo  "Sau đó, chọn On VPS và 5ph sau Login lại"
    echo  "---------------------------------------------"
    echo -e "\e[5;33m----------MMO365.PRO.VN-----------\e[0m"
    echo -e "\e[5;33mFb: Xuân PT -- Zalo: 0967.15.36.90\e[0m"
    echo -e "\e[5;33mWeb chuyên:\e[0m"
    echo -e "\e[5;33mVPS Trail, VN và Ngoại chính hãng\e[0m"
    echo -e "\e[5;33mAcc Trail, Code, Tools MMO\e[0m"
    echo -e "\e[5;33mNhận Setup Web bán VPN, ShopClone..\e[0m"
    echo -e "\e[5;33m-------MMO365--Uy-Tín-100%---------\e[0m"
    echo  "---------------------------------------------"
    read -p "Nhập số tương ứng với lựa chọn: " so

case $so in
        1)
                bash <(curl -Ls https://raw.githubusercontent.com/XPTMMO/du-an_rs/refs/heads/main/ho1.sh)  $id $kbm
                #power_off_droplet $id $kbm
                ;;
        2)
                bash <(curl -Ls https://raw.githubusercontent.com/XPTMMO/du-an_rs/refs/heads/main/ho2.sh)  $id $kbm
                #power_on_droplet $id $kbm
                ;;
        3)
                bash <(curl -Ls https://raw.githubusercontent.com/XPTMMO/du-an_rs/refs/heads/main/hrs.sh)  $id $kbm
                #reboot_droplet $id $kbm
                ;;
        *)
                echo "Lua chon khong hop le"
                ;;
esac
