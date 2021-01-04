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

#music cache folder
find . -depth -name "*joox*" -type d -exec rm -rf "{}" \; 2>/dev/null
find . -depth -name "*spotify*" -type d -exec rm -rf "{}" \; 2>/dev/null

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

#neko X 
rm -rf Android/data/nekox.messanger/files/caches 2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.apk" -exec rm -f {} \; 2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.sh" -exec rm -f {} \;  2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.zip" -exec rm -f {} \;  2>/dev/null

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
find . -depth -name "*.log" -type f -exec rm -f "{}" \; 2>/dev/null

# nomedia yang berarti akan membuat semua yang gk ingin dibaca galeri akhirnya terbaca
find . -type f -name "*nomedia*" -exec rm -f {} \; 

# penghapusan apk biar gk numpuk
find . -type f -name "*.apk" -exec rm -f {} \; 

# telegram X issue 
# i found this issue when i workaround this script
# so i recreate again this folder to fix that
#added if function because it will remake the folder 

if [ -d Android/data/org.thunderdog.challegram/files ];
then 
    mkdir Android/data/org.thunderdog.challegram/files/animations
    mkdir Android/data/org.thunderdog.challegram/files/documents
    mkdir Android/data/org.thunderdog.challegram/files/music
    mkdir Android/data/org.thunderdog.challegram/files/photos
    mkdir Android/data/org.thunderdog.challegram/files/temp
    mkdir Android/data/org.thunderdog.challegram/files/video_notes
    mkdir Android/data/org.thunderdog.challegram/files/videos
    mkdir Android/data/org.thunderdog.challegram/files/voice
    else
    echo "nothing"
fi

# some yeah for MIUI
rm dctp 2>/dev/null
rm did 2>/dev/null

if [[ -d MIUI ]];
then
     rm -rf MIUI 2>/dev/null
fi

# root side 
# please running on root access

#fstrim 
fstrim -v /data 2>/dev/null
fstrim -v /cache 2>/dev/null
fstrim -v /system 2>/dev/null
fstrim -v /vendor 2>/dev/null