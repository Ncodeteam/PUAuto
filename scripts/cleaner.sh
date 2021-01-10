#!/bin/bash 
#forked from PUAuto

#for fix some annoying
#pembersih 

echo "cleaner berjalan......"

#standar
rm -rf mtklog 2>/dev/null
rm -rf oppo_log 2>/dev/null
rm -rf ColorOS 2>/dev/null
rm -rf miniplay 2>/dev/null
rm -rf SHAREit 2>/dev/null
rm -rf Browser 2>/dev/null

#vendor hape
echo "hapus vendor folder hape"
rm -rf Android/data/*miui*/
rm -rf Android/data/*nearme*/
rm -rf Android/data/*coloros*/
rm -rf Android/data/*oppo*/
rm -rf Android/data/*opera*/
rm -rf Android/data/*xiaomi*/

#music cache folder
echo "hapus folder cache folder"
rm -rf *joox*/
rm -rf Android/data/*spotify*/

# khusus google dan android
echo "hapus google and shit folder"
rm -rf Android/data/*google*/
rm -rf Android/data/*android*/

# khusus whatsapp
echo "hapus whatsapp useless folder"
find Whatsapp/ -depth -name "*Shared*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Thumbs*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*trash*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Backups*" -type d -exec rm -rf "{}" \; 
find Whatsapp/ -depth -name "*Databases*" -type d -exec rm -rf "{}" \;

echo "moar cleaning unecessery"

# delete file kosong
find Android/ -depth -type d -empty -exec rmdir {} \;
find . -depth -type d -empty -exec rmdir {} \;

#log & more
rm -rf *log*
find . -type f -name "*iacovnfld*" -exec rm -f {} \;
find . -type f -name "*.log" -exec rm -f {} \;

# nomedia yang berarti akan membuat semua yang gk ingin dibaca galeri akhirnya terbaca
find . -type f -name "*nomedia*" -exec rm -f {} \;

#thumbnail cleaner
find . -depth -name "*thumbnails*" -type d -exec rm -rf {} \;


# penghapusan apk biar gk numpuk
find . -type f -name "*.apk" -exec rm -f {} \;

#some function
find Android/data -depth -name "*cache*" -type d -exec rm -rf "{}" \; 

#original telegram cleaner
find Telegram/ -type f -name "*.apk" -exec rm -f {} \; 2>/dev/null
find Telegram/ -type f -name "*.sh" -exec rm -f {} \;  2>/dev/null
find Telegram/ -type f -name "*.zip" -exec rm -f {} \;  2>/dev/null
find Telegram/ -type f -name "*.mp3" -exec rm -f {} \;  2>/dev/null
find Telegram/ -type f -name "*.mp4" -exec rm -f {} \;  2>/dev/null
rm -rf Android/data/org.telegram.messenger/cache 2>/dev/null

#neko X 
rm -rf Android/data/nekox.messanger/files/caches 2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.apk" -exec rm -f {} \; 2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.sh" -exec rm -f {} \;  2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.zip" -exec rm -f {} \;  2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.mp4" -exec rm -f {} \;  2>/dev/null
find Android/data/nekox.messanger/files/ -type f -name "*.mp3" -exec rm -f {} \;  2>/dev/null

# telegram x cleaner
find Android/data/org.thunderdog.challegram/ -type f -name "*.apk" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.mp4" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.jpg" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.sh" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.zip" -exec rm -f {} \; 2>/dev/null
find Android/data/org.thunderdog.challegram/ -type f -name "*.mp3" -exec rm -f {} \; 2>/dev/null
rm -rf Android/data/org.thunderdog.challegram/cache 2>/dev/null

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
     rm -rf MIUI
fi

# root side 
# please running on root access

# cleaning data
if [ -d /data ];
then
      rm -rf /data/dalvik-cache 2>/dev/null
      rm -rf /cache/*.apk 2>/dev/null
      rm -f /cache/*.tmp 2>/dev/null
      rm -f /data/*.log 2>/dev/null
      rm -f /data/*.txt 2>/dev/null
      rm -f /data/anr/* 2>/dev/null
      rm -f /data/backup/pending/*.tmp 2>/dev/null
      rm -f /data/cache/*.* 2>/dev/null
      rm -f /data/data/*.log 2>/dev/null
      rm -f /data/data/*.txt 2>/dev/null
      rm -f /data/log/*.log 2>/dev/null
      rm -f /data/log/*.txt 2>/dev/null
      rm -f /data/local/*.apk 2>/dev/null
      rm -f /data/local/*.log 2>/dev/null
      rm -f /data/local/*.txt  2>/dev/null
      rm -f /data/local/tmp/* 2>/dev/null
      rm -f /data/last_alog/*.log 2>/dev/null
      rm -f /data/last_alog/*.txt 2>/dev/null
      rm -f /data/last_kmsg/*.log 2>/dev/null
      rm -f /data/last_kmsg/*.txt 2>/dev/null
      rm -f /data/mlog/* 2>/dev/null
      rm -f /data/system/*.log 2>/dev/null
      rm -f /data/system/*.txt 2>/dev/null
      rm -f /data/system/dropbox/* 2>/dev/null
      rm -rf /data/system/usagestats/* 2>/dev/null
      rm -f /data/system/shared_prefs/* 2>/dev/null
      rm -f /data/tombstones/* 2>/dev/null
      rm -f /data/dalvik-cache/*.apk 2>/dev/null
      rm -f /data/dalvik-cache/*.tmp 2>/dev/null
      rm -f /data/last_alog/*.log 2>/dev/null
      rm -f /data/last_alog/*.txt 2>/dev/null
      rm -f /data/last_kmsg/*.log 2>/dev/null
      rm -f /data/last_kmsg/*.txt 2>/dev/null
      rm -f /data/mlog/* 2>/dev/null
      rm -f /data/system/*.log 2>/dev/null
      rm -f /data/system/*.txt 2>/dev/null
      rm -f /data/system/dropbox/* 2>/dev/null
      rm -rf /data/system/usagestats/* 2>/dev/null
      rm -f /data/system/shared_prefs/* 2>/dev/null
      rm -f /data/tombstones/* 2>/dev/null
    else 
    echo 
fi

#fstrim 
fstrim -v /data 2>/dev/null
fstrim -v /cache 2>/dev/null
fstrim -v /system 2>/dev/null
fstrim -v /vendor 2>/dev/null
fstrim -v /product 2>/dev/null

# my friend has reported some annoying folder call "browsermetrics"
# so i make it to force to delete them

find /data/user/ -depth -name "*BrowserMetrics*" -type d -exec rm -rf "{}" \; 2>/dev/null

echo "pembersihan selesai"