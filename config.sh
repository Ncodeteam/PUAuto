#!/bin/bash
#Narima Script 1.0

clear
# my reference to make this
#https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/#
#https://stackoverflow.com/questions/17368872/how-to-move-or-copy-files-listed-by-find-command-in-unix
#https://unix.stackexchange.com/questions/46541/how-can-i-use-bashs-if-test-and-find-commands-together
#https://www.cyberciti.biz/tips/find-out-if-file-exists-with-conditional-expressions.html
#https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php
#https://www.linuxsec.org/2020/04/penggunaan-if-statement-pada-bash.html

echo "==================================="
echo -e "1.3 Pemasang User.ini dan Auto cleaner"
echo -e "created by nekaru"
echo -e "note : jika kamu terkena banned jangan pernah salahkan installer ini"
echo -e "resiko ditannggung sendiri"
echo "==================================="
sleep 1

# Penghapusan Config
# penghapusan config berguna agar file tidak tertimpa dan mengakibatkan error
echo "saatnya memasang ulang"
if [ -d /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # mencari folder 
then
     echo "ditemukan saat nya dihapus"
     rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config # menghapusnya
     else
     echo "tidak ditemukan saatnya bikin ulang"
fi

# Bikin Folder Config
# bikin ulang ini bertujuan agar script bisa terpasang
echo "buat folder config dimulai"
if [ -d /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # sama penjelasannya seperti di https://github.com/Ncode2014/PUAuto/blob/fb39c7225e48fba85cef49aa50f52a589ee4532e/config.sh#L47
then
    echo "/Config Ditemukan Sekarang Proses pemasangan config dimulai."
    else
    echo "/config tidak ditemukan waktu nya bikin ulang"
    mkdir Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
fi

# Pasang UserGame
# bagian ini sebenarnya riskan karena apa? karena biasanya Usergame terkandung banyak kode aim dan segala macam yang dimana emang kalau menggunakan kode yang ekstrim
# mengakibatkan banned akan tetapi resiko ditanggung sendiri
echo "pemasangan UserGame Dimulai"
if [ $(find Download/ -name '*Game.ini') ];
then
    echo "file usergame ditemukan saatnya memasang...."
    find /Download/ -type f -name "UserGame.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
    else
    echo "file usergame tidak ditemukan pemasangan gagal"
    exit
fi

# Pasang UserEngine
echo "pemasangan userEngine dimulai"
if [ $(find Download/ -name '*Engine.ini') ];
then
    echo "file engine ditemukan saatnya memasang..."
    find /Download/ -type f -name "UserEngine.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
    echo "pemasangan Engine Selesai"
    else
    echo "file userengine tidak ditemukan pemasangan gagal"
    exit
fi

# Pasang beberapa hal
# ini berguna agar kalian tidak terkena banned akan tetapi ini bukanlah peruntukkannya untuk curang atau segala macam ingat resiko ditanggung sendiri 
echo "pemasangan lainnnya dimulai"
if [ $(find Download/ -name 'UserAntiCheat.ini') ];
then
    echo "Pemasangan dimulai"
           find /Download/ -type f -name "UserAntiCheat.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
           find /Download/ -type f -name "server.json" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
           find /Download/ -type f -name "UserUAE.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
           find /Download/ -type f -name "UserLogSuppression.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
           find /Download/ -type f -name "AntiCheat.json" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
    else
    echo "file tidak ditemukan pemasangan gagal"
    exit
fi
    
# saatnya ke mode pembersihan mode ini berguna agar pubeg berjalan lancar    
# pembersihan tingkat 1 berisi standar pembersihan biasa
# base old 
echo "pemasangan config selesai saatnya pembersihan"
sleep 5
echo "saat nya pembersihan"
sleep 1
echo "tingkat pertama dimulai"
rm -rf Android/Data/com.tencent.ig/cache
rm Android/data/com.tencent.ig/files/cacheFile.txt
# pembersihan tingkat 2 berisi pembersihan standar 
echo "lets go..... pembersihan tingkat 2"
sleep 3
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData/*
# pembersihan tingkat 3 pembersihan file berbau pufferEifs
echo "pembersihan tingkat 3...... dimulai"
sleep 3
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir/*
echo -e "pembersihan selesai"
