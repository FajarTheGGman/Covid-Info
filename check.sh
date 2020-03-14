#!/bin/bash
#Copyright© By Fajar Firdaus

j=$(apt list | grep 'jq' | head -n1 )
c=$(apt list | grep 'curl' | head -n1 )

echo -e '\e[32m[/] Checking Dependencies'

if [[ $x == *'jq'* ]]; then
 echo ""
else
 echo -e '\e[31m[!] Package jq tidak terinstall'
 apt-get install jq
fi

if [[ $c == *'curl'* ]]; then
 echo ""
else
 echo -e '\e[31m[!] Package curl tidak terinstall'
 apt-get install curl
 echo -e '\e[32m[+] Done, Semua Dependencies Berhasil di install'
fi

echo -e '\e[31m[-=- Covid Info  -=-]'
echo  ''
echo -e '\e[33m{'
echo -e '\e[36m Coder : Fajar Firdaus'
echo -e '\e[36m FB : Fajar Firdaus'
echo -e '\e[36m IG : FajarTheGGman'
echo -e '\e[36m GITHUB : FajarTheGGman'
echo -e '\e[33m}'

echo -e '\e[31m[Sumber API] : co.vid19.id'
echo -e '\e[32mStay Safe Everyone :)'

echo -e '\e[31m[ Ketik CTRL + C To stop ]'

echo -e '\e[32m[!] Informasi di update setiap 1 jam'

while true
do

# HTTP Request
t=$(curl -s https://co.vid19.id/api/dashboard | jq .today_case)
c=$(curl -s https://co.vid19.id/api/dashboard | jq .total_case)
p=$(curl -s https://co.vid19.id/api/dashboard | jq .total_recovered)
k=$(curl -s https://co.vid19.id/api/dashboard | jq .total_death)


echo -e '\e[33m[------- Total Kasus Corona Di indonesia -------]'
echo -e '\e[36m[Kasus Hari ini ] > ' $t
echo -e '\e[36m[Total Kasus] > ' $c
echo -e '\e[36m[Total Pasien Sembuh] > ' $p
echo -e '\e[36m[Total Kematian] >' $k

sleep 3600
done
