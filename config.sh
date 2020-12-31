#!/bin/bash
#version 1.0

clear
# Variables
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
blue='\e[1;34m'
cyan='\e[1;36m'
red='\e[1;39m'

# my reference to make this
#https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/#
#https://stackoverflow.com/questions/17368872/how-to-move-or-copy-files-listed-by-find-command-in-unix
#https://unix.stackexchange.com/questions/46541/how-can-i-use-bashs-if-test-and-find-commands-together
#https://www.cyberciti.biz/tips/find-out-if-file-exists-with-conditional-expressions.html
#https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php
#https://www.linuxsec.org/2020/04/penggunaan-if-statement-pada-bash.html

echo "==================================="
echo -e "1.2 Pemasang UserEngine + UserGame"
echo -e "created by nekaru"
echo "==================================="
sleep 1

# Penghapusan Config
echo "saatnya memasang ulang"
if [ -d /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/ ];
then
     echo "ditemukan saat nya dihapus"
     rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
     else
     echo "tidak ditemukan saatnya bikin ulang"
fi

# Bikin Folder Config
echo "buat folder config dimulai"
if [ -d /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/ ];
then
    echo "/Config Ditemukan Sekarang Proses pemasangan config dimulai."
    else
    echo "/config tidak ditemukan waktu nya bikin ulang"
    mkdir Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/
fi

# Pasang UserGame
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
echo "pemasangan lainnnya dimulai"
if [ $(find Download/ -name 'UserAntiCheat.ini') ];
then
    echo "Anticheat eksekusi dimulai"
           find /Download/ -type f -name "UserAntiCheat.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
           find /Download/ -type f -name "server.json" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
           find /Download/ -type f -name "UserUAE.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
           find /Download/ -type f -name "UserLogSuppression.ini" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
           find /Download/ -type f -name "AntiCheat.json" | xargs cp -t /Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
    else
    echo "Anticheat tidak ditemukan pemasangan gagal"
    exit
fi
    
# pembersihan tingkat 1 berisi standar pembersihan biasa
echo "cleaner......."
rm -rf Android/Data/com.tencent.ig/cache
rm Android/data/com.tencent.ig/files/cacheFile.txt
# pembersihan tingkat 2 berisi pembersihan standar 
echo "lets go..... pembersihan tingkat 2"
sleep 3
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData/*
# pembersihan tingkat 3 pembersihan file berbau pufferEifs
echo "pembersihan tingkat 3"
sleep 3
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1/*
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir/*
echo -e "pembersihan selesai"
