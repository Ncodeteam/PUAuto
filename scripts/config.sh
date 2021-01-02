#!/bin/bash
#Narima Script 1.1
#changelog
# a).fix a bug when you copied
# b).added more cleaning

clear
# my reference to make this
#https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/#
#https://stackoverflow.com/questions/17368872/how-to-move-or-copy-files-listed-by-find-command-in-unix // not working
#https://unix.stackexchange.com/questions/46541/how-can-i-use-bashs-if-test-and-find-commands-together
#https://www.cyberciti.biz/tips/find-out-if-file-exists-with-conditional-expressions.html
#https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php
#https://www.linuxsec.org/2020/04/penggunaan-if-statement-pada-bash.html
#https://stackoverflow.com/questions/5241625/find-and-copy-files
#https://stackoverflow.com/questions/238073/how-to-add-a-progress-bar-to-a-shell-script
#https://unix.stackexchange.com/a/422399

# bagian pembuka
echo -e "sebelum memasang alangkah baik nya berdoa dulu"
echo -e "berdoa mulai"
sleep 10
clear
echo -e "berdoa selesai"
sleep 3
clear
echo "waktunya hajar"
sleep 5
clear

echo "==================================="
echo -e "1.5 PUBG INSTALLER CONFIG & BOOSTER"
echo -e "created by nekaru"
echo -e "note : jika kamu terkena banned jangan pernah salahkan installer ini"
echo -e "resiko ditannggung sendiri"
echo -e "pastikan gunakan scala yang satu file aja contoh extract hanya 360P"
echo "==================================="
sleep 5
echo "menuju tkp"
sleep 2
clear
# cangluk
echo -e "========================================="
echo -e "changelog"
echo -e "a).fix bug."
echo -e "b).added cleaner xiaomi,oppo dan realme"
echo -e "c).scalability supported"
echo -e "d).added progress bar"
echo -e "========================================="
sleep 5

# cleaner xiaomi,oppo dan realme dan pubg
# buat lebih kenceng perfoma dan cepat hamil xixixixixixi

echo "pembersihan tingkat 1"
echo "pembersihan ini berisi pembersihan sederhana"
sleep 5
clear
echo "pembersihan tingkat 1 dimulai"

#scrullbar
echo -ne '===                   (25%)\r'
sleep 1
echo -ne '=======              (40%)\r'
sleep 1
echo -ne '===========         (60%)\r'
sleep 1
echo -ne '==============     (80%)\r'
sleep 1
echo -ne '================   (100%)\r'
echo -ne '\n'

#bagian oppo,realme dan xiaomi
rm -rf mtklog
rm -rf .*
rm -rf oppo_log
rm -rf ColorOS
rm -rf miniplay
rm -rf SHAREit
rm -rf Browser

#bagian pubg ini adalah bagian sederhana pubg yang berisi pembersihan cache
#dan lain-lain
rm -rf Android/data/com.tencent.ig/files/TGPA
rm -rf Android/data/com.tencent.ig/files/ProgramBinaryCache
rm -rf Android/Data/com.tencent.ig/cache
rm Android/data/com.tencent.ig/files/cacheFile.txt
echo "pembersihan pertama telah selesai"
sleep 5
clear

echo "pembersihan tingkat dua"
echo "tingkat ini termasuk paling medium karena ini akan membersihkan sampah yang sering numpuk"
echo "akan tetapi jika ada kek file video offline youtube siap siap aj bakal hilang"
echo "tingkatan ini termasuk sadis dan menakutkan karena keajaibannya dan kesadisan nya"
sleep 2
echo "proses dimulai"
#scrullbar
echo -ne '===                    (25%)\r'
sleep 1
echo -ne '=======               (40%)\r'
sleep 1
echo -ne '===========          (60%)\r'
sleep 1
echo -ne '==============       (80%)\r'
sleep 1
echo -ne '================       (100%)\r'
echo -ne '\n'

#Bagian Folder Android
find Android/data/ -depth -name "*realme*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*nearme*" -type d -exec rm -rf "{}" \;
find Android/data/ -depth -name "*coloros*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*heytap*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*android*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*oppo*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*opera*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*google*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*mi*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*xiaomi*" -type d -exec rm -rf "{}" \; 


#bagian whatsapp cleaner
find Whatsapp/ -depth -name "*Shared*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Thumbs*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*trash*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Backups*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Databases*" -type d -exec rm -rf "{}" \;

#original telegram cleaner
find Telegram/ -type f -name "*.apk" -exec rm -f {} \;
find Telegram/ -type f -name "*.sh" -exec rm -f {} \;
rm -rf Android/data/org.telegram.messenger/cache

# telegram x cleaner
find Android/data/org.thunderdog.challegram/ -type f -name "*.apk" -exec rm -f {} \;
find Android/data/org.thunderdog.challegram/ -type f -name "*.sh" -exec rm -f {} \;
find Android/data/org.thunderdog.challegram/ -type f -name "*.zip" -exec rm -f {} \;
rm -rf Android/data/storage/emulated/0/Android/data/org.thunderdog.challegram/cache

# menghapus folder kosong gaming
find Android/ -depth -type d -empty -exec rmdir {} \;
find . -depth -type d -empty -exec rmdir {} \;

# some yeah for MIUI
rm dctp
rm did

if [[ -d MIUI ]];
then
     rm -rf MIUI
fi

# this code maybe not included because this code is powerfull

# menghapus semua folder kecuali satu
#echo "menghapus semuanya terkecuali pubeg mobile"
#find Android/data -mindepth 1 -maxdepth 1 -type d -not -name com.tencent.ig \
#     -exec echo rm -rf '{}' \;
     
# pubg tingkat sadis karena ini mengakibat compile ulang pas masuk game nya
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData
echo "tingkat 2 selesai"
sleep 5
clear

# pembersihan tingkat 3 pembersihan file berbau pufferEifs
echo "pembersihan tingkat 3 berisi pembersihan standar"
echo "dan tidak terkandung banyak code dan lebih difokus kan ke pubg"
echo "pembersihan 3 dimulai"
#scrullbar
echo -ne '===                   (25%)\r'
sleep 1
echo -ne '=======              (40%)\r'
sleep 1
echo -ne '===========         (60%)\r'
sleep 1
echo -ne '==============     (80%)\r'
sleep 1
echo -ne '================   (100%)\r'
echo -ne '\n'
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1
rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir
echo -e "pembersihan selesai sekarang masuk ke pemasangan"
sleep 3
clear

# Bagian Utama Pemasangan Config
echo "saatnya memasang ulang"
sleep 5
clear
if [ -d Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # mencari folder 
then
     echo "folder ditemukan saat nya dihapus"
     #scrullbar
     echo -ne '===                   (25%)\r'
     sleep 1
     echo -ne '=======              (40%)\r'
     sleep 1
     echo -ne '===========         (60%)\r'
     sleep 1
     echo -ne '==============     (80%)\r'
     sleep 1
     echo -ne '================   (100%)\r'
     echo -ne '\n'
     rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config # menghapusnya
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
    echo -ne '===                   (25%)\r'
    sleep 1
    echo -ne '=======              (40%)\r'
    sleep 1
    echo -ne '===========         (60%)\r'
    sleep 1
    echo -ne '==============     (80%)\r'
    sleep 1
    echo -ne '================   (100%)\r'
    echo -ne '\n'
    mkdir Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
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
if [[ $(find Download/. -name '*Game*.ini') ]];
then
    echo "file usergame ditemukan saatnya memasang...."
    echo -ne '===                   (25%)\r'
    sleep 1
    echo -ne '=======              (40%)\r'
    sleep 1
    echo -ne '===========         (60%)\r'
    sleep 1
    echo -ne '==============     (80%)\r'
    sleep 1
    echo -ne '================   (100%)\r'
    echo -ne '\n'
    find Download/ -name '*Game*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    echo "usergame telah terpasang"
    sleep 3
    clear
    else
    echo "file usergame tidak ditemukan pemasangan gagal"
    sleep 3
    exit
fi

echo "pemasangan userEngine dimulai"
if [[ $(find Download/. -name '*Engine*.ini') ]];
then
    echo "file engine ditemukan saatnya memasang..."
    echo -ne '===                   (25%)\r'
    sleep 1
    echo -ne '=======              (40%)\r'
    sleep 1
    echo -ne '===========         (60%)\r'
    sleep 1
    echo -ne '==============     (80%)\r'
    sleep 1
    echo -ne '================   (100%)\r'
    echo -ne '\n'
    find Download/ -name '*Engine*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
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
if [[ $(find Download/. -name '*AntiCheat*.ini') ]];
then
    echo "Pemasangan dimulai"
        echo -ne '===                   (25%)\r'
        sleep 1
        echo -ne '=======              (40%)\r'
        sleep 1
        echo -ne '===========         (60%)\r'
        sleep 1
        echo -ne '==============     (80%)\r'
        sleep 1
        echo -ne '================   (100%)\r'
        echo -ne '\n'
        find Download/ -name '*AntiCheat*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*Server*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*UserUAE*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*Suppression*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*AntiCheat*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
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
    echo -ne '===                   (25%)\r'
    sleep 1
    echo -ne '=======               (40%)\r'
    sleep 1
    echo -ne '===========           (60%)\r'
    sleep 1
    echo -ne '==============        (80%)\r'
    sleep 1
    echo -ne '================       (100%)\r'
    echo -ne '\n'
    find Download/ -name '*Scalability*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
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