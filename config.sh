#!/bin/bash
#Narima Script 2.1
#changelog
# a).just added
# just a note i not responsible if you found this script to make something illegal 
# so don't report me as author on this script

clear
echo "==================================="
echo -e "2.1 PUBG INSTALLER CONFIG & BOOSTER"
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
echo -e "b).make easier life"
echo -e "========================================="
sleep 5
echo "pembersihan"
echo "pembersihan ini pembersihan muktahir dalam pubeg"
sleep 5
clear
echo "pembersihan dimuliai"

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
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData
rm -f Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords
rm -f Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag 
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1


#pubg kr
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/TGPA 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/ProgramBinaryCache 2>/dev/null
rm -rf Android/Data/com.pubg.krmobile/cache 2>/dev/null
rm Android/data/com.pubg.krmobile/files/cacheFile.txt 2>/dev/null
#pubg kr
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1 2>/dev/null
rm -rf Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir 2>/dev/null
sleep 1
echo -ne '======================   (100%)\r'
echo -ne '\n'
echo "pembersihan telah selesai saat nya memasang"
sleep 5
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
if [ -d Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; 
then
    echo "/Config Ditemukan Sekarang Proses pemasangan config dimulai."
    echo -ne '=======                   (25%)\r'
    sleep 1
    echo -ne '============              (40%)\r'
    sleep 1
    echo -ne '=================         (60%)\r'
    sleep 1
    echo -ne '=====================     (80%)\r'
    find /storage/emulated/0/ -name '*UserGame*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    find /storage/emulated/0/ -name '*UserEngine*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    echo -ne '======================   (100%)\r'
    echo -ne '\n'
    clear
    else
    echo "/config tidak ditemukan waktu nya bikin ulang + memasang config"
    echo -ne '=======                   (25%)\r'
    sleep 1
    echo -ne '============              (40%)\r'
    sleep 1
    echo -ne '=================         (60%)\r'
    sleep 1
    echo -ne '=====================     (80%)\r'
    mkdir Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
    find /storage/emulated/0/ -name '*UserGame*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    find /storage/emulated/0/ -name '*UserEngine*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '======================   (100%)\r'
    echo -ne '\n'
    echo "folder telah dibuat"
    sleep 2
    clear
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
