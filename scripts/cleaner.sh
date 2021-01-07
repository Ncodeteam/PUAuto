#!/bin/bash
#forked from PUAuto

#pembersih 

echo "cleaner berjalan......"

#standar
rm -rf mtklog 2>/dev/null
rm -rf oppo_log 2>/dev/null
rm -rf ColorOS 2>/dev/null
rm -rf miniplay 2>/dev/null
rm -rf SHAREit 2>/dev/null
rm -rf Browser 2>/dev/null

#for some folder 
if [ -d .MIThemeEditor/ ];
  then
  echo 
  else
  rm -rf .*
fi

#vendor hape
echo "hapus vendor folder hape"
find Android/data/ -depth -name "*realme*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*nearme*" -type d -exec rm -rf "{}" \;
find Android/data/ -depth -name "*coloros*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*heytap*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*oppo*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*opera*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*mi*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*xiaomi*" -type d -exec rm -rf "{}" \; 

#music cache folder
echo "hapus folder cache folder"
find . -depth -name "*joox*" -type d -exec rm -rf "{}" \; 2>/dev/null
find . -depth -name "*spotify*" -type d -exec rm -rf "{}" \; 2>/dev/null

# khusus google dan android
echo "hapus google and shit folder"
find Android/data/ -depth -name "*google*" -type d -exec rm -rf "{}" \; 
find Android/data/ -depth -name "*android*" -type d -exec rm -rf "{}" \; 

# khusus whatsapp
echo "hapus whatsapp useless folder"
find Whatsapp/ -depth -name "*Shared*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Thumbs*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*trash*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Backups*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Databases*" -type d -exec rm -rf "{}" \;

echo "moar cleaning unecessery"

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
find Android/data/org.thunderdog.challegram/ -type f -name "*.mp4" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.jpg" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.sh" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.zip" -exec rm -f {} \; 2>/dev/null
rm -rf Android/data/org.thunderdog.challegram/cache 2>/dev/null

# genshin impact & some stuff
if [ -d Android/data/com.miHoYo.GenshinImpact ]; then
echo "data genshin ditemukan jangan hapus"
else
find Android/ -depth -type d -empty -exec rmdir {} \;

if [ -d Android/data/com.iudesk.android.photo.editor ]; then
echo "data photo editor ditemukan jangan hapus"
else
find Android/ -depth -type d -empty -exec rmdir {} \;

if [ -d Android/data/mark.via.gp ]; then
echo "data via ditemukan jangan dihapus"
else
find Android/ -depth -type d -empty -exec rmdir {} \;

# delete file kosong
#find Android/ -depth -type d -empty -exec rmdir {} \;
#find . -depth -type d -empty -exec rmdir {} \;

#log & more
find . -depth -name "*log*" -type d -exec rm -rf "{}" \; 2>/dev/null
find . -depth -name "*thumbnails*" -type d -exec rm -rf "{}" \; 
find . -depth -name "*.log" -type f -exec rm -f "{}" \; 2>/dev/null

# nomedia yang berarti akan membuat semua yang gk ingin dibaca galeri akhirnya terbaca
find . -type f -name "*nomedia*" -exec rm -f {} \; 

# penghapusan apk biar gk numpuk
find . -type f -name "*.apk" -exec rm -f {} \; 

#some function
find Android/data -depth -name "*cache*" -type d -exec rm -rf "{}" \; 

# telegram X issue 
# i found this issue when i workaround this script
# so i recreate again this folder to fix that
#added if function because it will remake the folder 

if [ -d Android/data/org.thunderdog.challegram/files ];
then 
    mkdir Android/data/org.thunderdog.challegram/files/animations 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/documents 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/music 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/photos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/temp 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/video_notes 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/videos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/voice 2>/dev/null
    else
    echo 
fi

# if you have secoundary account telegram x
if [ -d Android/data/org.thunderdog.challegram/files/x_account1 ];
then 
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/animations 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/documents 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/music 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/photos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/temp 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/video_notes 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/videos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/voice 2>/dev/null
    else
    echo 
fi

# some yeah for MIUI
rm dctp 2>/dev/null
rm did 2>/dev/null

if [[ -d MIUI ]];
then
     rm -rf MIUI/.config 2>/dev/null
     rm -rf MIUI/Gallery 2>/dev/null
     rm -rf MIUI/snapshot 2>/dev/null
     rm -rf MIUI/.cache
fi

# root side 
# please running on root access

#fstrim 
fstrim -v /data 2>/dev/null
fstrim -v /cache 2>/dev/null
fstrim -v /system 2>/dev/null
fstrim -v /vendor 2>/dev/null
fstrim -v /product 2>/dev/null

# moar cleaning
# based from SQ injector By Akira (akira-vishal @ GitHub)


if [ -d /sdcard ];
then
    rm -rf /sdcard/LOST.DIR
    rm -rf /sdcard/found000
    rm -rf /sdcard/LazyList
    rm -rf /sdcard/albumthumbs
    rm -rf /sdcard/Backucup
    rm -rf /sdcard/wlan_logs
    rm -rf /sdcard/ramdump
    rm -rf /sdcard/UnityAdsVideoCache
    else 
    echo 
fi
# my friend has reported some annoying folder call "browsermetrics"
# so i make it to force to delete them

find /data/user/ -depth -name "*BrowserMetrics*" -type d -exec rm -rf "{}" \; 2>/dev/null

echo "pembersihan selesai"