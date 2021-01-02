#!/bin/bash
#forked from PUAuto

#pembersih 

#standar
rm -rf mtklog
rm -rf .*
rm -rf oppo_log
rm -rf ColorOS
rm -rf miniplay
rm -rf SHAREit
rm -rf Browser

#vendor hape
find Android/data/ -depth -name "*realme*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*nearme*" -type d -exec rm -rf "{}" \;
find Android/data/ -depth -name "*coloros*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*heytap*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*oppo*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*opera*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*mi*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*xiaomi*" -type d -exec rm -rf "{}" \; 

#khusus pengguna mimusic sampah
find . -depth -name "*joox*" -type d -exec rm -rf "{}" \; 

# khusus google dan android
find Android/data/ -depth -name "*google*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*android*" -type d -exec rm -rf "{}" \; 

# khusus whatsapp
find Whatsapp/ -depth -name "*Shared*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Thumbs*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*trash*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Backups*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Databases*" -type d -exec rm -rf "{}" \;

#original telegram cleaner
find Telegram/ -type f -name "*.apk" -exec rm -f {} \;
find Telegram/ -type f -name "*.sh" -exec rm -f {} \;
find Telegram/ -type f -name "*.zip" -exec rm -f {} \;
rm -rf Android/data/org.telegram.messenger/cache

# telegram x cleaner
find Android/data/org.thunderdog.challegram/ -type f -name "*.apk" -exec rm -f {} \;
find Android/data/org.thunderdog.challegram/ -type f -name "*.jpg" -exec rm -f {} \;
find Android/data/org.thunderdog.challegram/ -type f -name "*.sh" -exec rm -f {} \;
find Android/data/org.thunderdog.challegram/ -type f -name "*.zip" -exec rm -f {} \;
rm -rf Android/data/org.thunderdog.challegram/cache

# delete file kosong
find Android/ -depth -type d -empty -exec rmdir {} \;
find . -depth -type d -empty -exec rmdir {} \;

#log & more
find . -depth -name "*log*" -type d -exec rm -rf "{}" \; 
find . -depth -name "*thumbnails*" -type d -exec rm -rf "{}" \; 

# penghilang anu biar bkp nya kelihatan xixixiixx
find . -type f -name "*nomedia*" -exec rm -f {} \;

# some yeah for MIUI
rm dctp
rm did

if [[ -d MIUI ]];
then
     rm -rf MIUI
fi