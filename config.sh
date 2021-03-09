#!/bin/bash
#Narima Script 2.0
#changelog
# a).just added
# just a note i not responsible if you found this script to make something illegal 
# so don't report me as author on this script

clear
echo "==================================="
echo -e "2.0 PUBG INSTALLER CONFIG & BOOSTER"
echo -e "created by nekaru"
echo -e "note : jika kamu terkena banned jangan pernah salahkan installer ini"
echo -e "resiko ditannggung sendiri"
echo -e "pastikan gunakan scala yang satu file aja contoh extract hanya 360P"
echo -e "only for pubg mobile global not for another pubg mobile installer"
echo "==================================="
sleep 5
echo "menuju tkp"
sleep 2
clear

# cangluk
echo -e "========================================="
echo -e "changelog"
echo -e "a).make a efficient solution"
echo -e "b).make new cleaning set"
echo -e "c).fix a bug"
echo -e "========================================="
sleep 5
echo "pembersihan tingkat 1"
echo "pembersihan ini berisi pembersihan sederhana"
sleep 5
clear
echo "pembersihan tingkat 1 dimulai"

#scrullbar
echo -ne '=======                   (25%)\r'
sleep 1
echo -ne '============              (40%)\r'
sleep 1
echo -ne '=================         (60%)\r'
sleep 1
echo -ne '=====================     (80%)\r'
rm -rf Android/data/com.tencent.ig/files/TGPA
rm -rf Android/data/com.tencent.ig/files/ProgramBinaryCache
rm -rf Android/Data/com.tencent.ig/cache
rm Android/data/com.tencent.ig/files/cacheFile.txt

#pubg kr
rm -rf Android/data/com.pubg.krmobile/files/TGPA 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/ProgramBinaryCache 2>/dev/null
rm -rf Android/Data/com.pubg.krmobile/cache 2>/dev/null
rm Android/data/com.pubg.krmobile/files/cacheFile.txt 2>/dev/null

sleep 1
echo -ne '======================   (100%)\r'
echo -ne '\n'
echo "pembersihan pertama telah selesai"
sleep 5
clear

echo "pembersihan tingkat dua"
echo "tingkat ini termasuk paling medium karena ini akan membersihkan sampah yang sering numpuk"
echo "akan tetapi jika ada kek file video offline youtube siap siap aj bakal hilang"
echo "tingkatan ini termasuk sadis dan menakutkan karena keajaibannya dan kesadisan nya"
echo "warning ini akan menyebabkan re-compiling ulang pada pubg"
sleep 2
echo "proses dimulai"
#scrullbar
echo -ne '=======                   (25%)\r'
sleep 1
echo -ne '============              (40%)\r'
sleep 1
echo -ne '=================         (60%)\r'
sleep 1
echo -ne '=====================     (80%)\r'
# if you want advanced cleaner using cleaner.sh on https://github.com/Ncode2014/PUAuto/blob/main/scripts/cleaner.sh
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData
rm -f Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords
rm -f Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 

#pubg kr
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData 2>/dev/null

sleep 1
echo -ne '======================   (100%)\r'
echo -ne '\n'
echo "tingkat 2 selesai"
sleep 5
clear

# pembersihan tingkat 3 pembersihan file berbau pufferEifs and pandora
echo "pembersihan tingkat 3 berisi pembersihan standar"
echo "dan tidak terkandung banyak code dan lebih difokus kan ke pubg"
echo "pembersihan 3 dimulai"
#scrullbar
echo -ne '=======                   (25%)\r'
sleep 1
echo -ne '============              (40%)\r'
sleep 1
echo -ne '=================         (60%)\r'
sleep 1
echo -ne '=====================     (80%)\r'

# useless script since if i activate this pubg always reload again
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1
#rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir
rm -f 

#pubg kr
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir 2>/dev/null

sleep 1
echo -ne '======================   (100%)\r'
echo -ne '\n'
echo -e "pembersihan selesai sekarang masuk ke pemasangan"
sleep 3
clear

# honestly since idk usergame & userengine can work on another version pubg mobile
# so don't make a issue in this repo if you not figured how userengine & usergame work
# on another version pubg so don't give me a hope to added that

# Bagian Utama Pemasangan Config
echo "saatnya memasang ulang"
sleep 5
clear
if [ -d Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # mencari folder 
then
     echo "folder ditemukan saat nya dihapus"
     #scrullbar
     echo -ne '=======                   (25%)\r'
     sleep 1
     echo -ne '============              (40%)\r'
     sleep 1
     echo -ne '=================         (60%)\r'
     sleep 1
     echo -ne '=====================     (80%)\r'
     rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config # menghapusnya
     sleep 1
     echo -ne '======================   (100%)\r'
     echo -ne '\n'
     echo "folder telah terhapus saatnya membuat ulang"
     sleep 3
     clear
     else
     echo "Config pulder tidak ditemukan saatnya bikin ulang"
     sleep 5
     clear
fi

echo "buat folder config dimulai"
sleep 5
clear
if [ -d Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # sama penjelasannya seperti di https://github.com/Ncode2014/PUAuto/blob/fb39c7225e48fba85cef49aa50f52a589ee4532e/config.sh#L47
then
    echo "/Config Ditemukan Sekarang Proses pemasangan config dimulai."
    sleep 2
    clear
    else
    echo "/config tidak ditemukan waktu nya bikin ulang"
    echo -ne '=======                   (25%)\r'
    sleep 1
    echo -ne '============              (40%)\r'
    sleep 1
    echo -ne '=================         (60%)\r'
    sleep 1
    echo -ne '=====================     (80%)\r'
    mkdir Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
    sleep 1
    echo -ne '======================   (100%)\r'
    echo -ne '\n'
    echo "folder telah dibuat"
    sleep 2
    clear
fi

# Pasang UserGame,Userengine dan lain lain
# bagian ini sebenarnya riskan karena apa? karena biasanya Usergame terkandung banyak kode aim dan segala macam yang dimana emang kalau menggunakan kode yang ekstrim
# mengakibatkan banned akan tetapi resiko ditanggung sendiri
echo "pemasangan UserGame Dimulai"
sleep 5
clear
if [[ $(find /storage/emulated/0/ -name '*UserGame*.ini') ]];
then
    echo "file usergame ditemukan saatnya memasang...."
    echo -ne '=======                   (25%)\r'
    sleep 1
    echo -ne '============              (40%)\r'
    sleep 1
    echo -ne '=================         (60%)\r'
    sleep 1
    echo -ne '=====================     (80%)\r'
    find /storage/emulated/0/ -name '*UserGame*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '======================   (100%)\r'
    echo -ne '\n'
    echo "usergame telah terpasang"
    sleep 3
    clear
    else
    echo "file usergame tidak ditemukan pemasangan gagal"
    sleep 3
    exit
fi

echo "pemasangan userEngine dimulai"
if [[ $(find /storage/emulated/0/ -name '*UserEngine*.ini') ]];
then
    echo "file engine ditemukan saatnya memasang..."
   echo -ne '=======                   (25%)\r'
    sleep 1
    echo -ne '============              (40%)\r'
    sleep 1
    echo -ne '=================         (60%)\r'
    sleep 1
    echo -ne '=====================     (80%)\r'
    find /storage/emulated/0/ -name '*UserEngine*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '======================   (100%)\r'
    echo -ne '\n'
    echo "engine telah terpasang"
    sleep 3
    clear
    echo "pemasangan Engine Selesai"
    sleep 5
    clear
    else
    echo "file userengine tidak ditemukan pemasangan gagal"
    exit
fi

# ini berguna agar kalian tidak terkena banned akan tetapi ini bukanlah peruntukkannya untuk curang atau segala macam ingat resiko ditanggung sendiri 
echo "pemasangan lainnnya dimulai"
sleep 3
clear
if [[ $(find /storage/emulated/0/ -name '*AntiCheat*.ini') ]];
then
    echo "Pemasangan dimulai"
        echo -ne '=======                   (25%)\r'
        sleep 1
        echo -ne '============              (40%)\r'
        sleep 1
        echo -ne '=================         (60%)\r'
        find /storage/emulated/0/ -name '*UserAntiCheat*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find /storage/emulated/0/ -name '*Server*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find /storage/emulated/0/ -name '*UserUAE*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*BaseDeviceProfiles*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        sleep 1
        echo -ne '=====================     (80%)\r'
        sleep 1
        echo -ne '======================   (100%)\r'
        echo -ne '\n'
        find /storage/emulated/0/ -name '*UserLogSuppression*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find /storage/emulated/0/ -name '*AntiCheat*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        echo "pemasangan selesai"
        sleep 5
        clear
    else
    echo "file tidak ditemukan pemasangan gagal"
    sleep 5
    clear
    echo "lanjut ke proses selanjutnya"
    sleep 3
    clear
fi

# Pasang Scalability
echo "pemasangan userScalability dimulai"
if [[ $(find Download/. -name '*Scalability*.ini') ]]; 
then
    echo "file Scalability ditemukan saatnya memasang..."
    echo -ne '=======                   (25%)\r'
    sleep 1
    echo -ne '============              (40%)\r'
    sleep 1
    echo -ne '=================         (60%)\r'
    sleep 1
    echo -ne '=====================     (80%)\r'
    find Download/ -name '*Scalability*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '======================   (100%)\r'
    echo -ne '\n'
    echo "Scalability telah terpasang"
    sleep 5
    echo "pemasangan Scalability Selesai"
    sleep 3
    clear
    else
    echo "file scalability tidak ditemukan pemasangan scalability gagal"
    sleep 5
    clear
    echo "..... anu"
    clear
fi
