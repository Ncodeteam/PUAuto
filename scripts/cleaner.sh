#!/bin/bash
#forked from PUAuto

#pembersih 

echo "cleaner berjalan......"

#standar
rm -rf mtklog 2>/dev/null
rm -rf .* 
rm -rf oppo_log 2>/dev/null
rm -rf ColorOS 2>/dev/null
rm -rf miniplay 2>/dev/null
rm -rf SHAREit 2>/dev/null
rm -rf Browser 2>/dev/null

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
find . -depth -name "*joox*" -type d -exec rm -rf "{}" \; 2>/dev/null

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
find Telegram/ -type f -name "*.apk" -exec rm -f {} \; 2>/dev/null
find Telegram/ -type f -name "*.sh" -exec rm -f {} \;  2>/dev/null
find Telegram/ -type f -name "*.zip" -exec rm -f {} \;  2>/dev/null
rm -rf Android/data/org.telegram.messenger/cache 2>/dev/null

# telegram x cleaner
find Android/data/org.thunderdog.challegram/ -type f -name "*.apk" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.jpg" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.sh" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.zip" -exec rm -f {} \; 2>/dev/null
rm -rf Android/data/org.thunderdog.challegram/cache 2>/dev/null

# delete file kosong
find Android/ -depth -type d -empty -exec rmdir {} \;
find . -depth -type d -empty -exec rmdir {} \;

#log & more
find . -depth -name "*log*" -type d -exec rm -rf "{}" \; 2>/dev/null
find . -depth -name "*thumbnails*" -type d -exec rm -rf "{}" \; 

# penghilang anu biar bkp nya kelihatan xixixiixx
find . -type f -name "*nomedia*" -exec rm -f {} \; 

# telegram X issue 
# i found this issue when i workaround this script
# so i recreate again this folder to fix that
mkdir Android/data/org.thunderdog.challegram/files/animations
mkdir Android/data/org.thunderdog.challegram/files/documents
mkdir Android/data/org.thunderdog.challegram/files/music
mkdir Android/data/org.thunderdog.challegram/files/photos
mkdir Android/data/org.thunderdog.challegram/files/temp
mkdir Android/data/org.thunderdog.challegram/files/video_notes
mkdir Android/data/org.thunderdog.challegram/files/videos
mkdir Android/data/org.thunderdog.challegram/files/voice

# some yeah for MIUI
rm dctp 2>/dev/null
rm did 2>/dev/null

if [[ -d MIUI ]];
then
     rm -rf MIUI 2>/dev/null
fi