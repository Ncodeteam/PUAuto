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
rm -rf Android/data/*MusicApp*/

#trash removed
# another bug genshin so i make this to fix
if [ -d Android/data/com.miHoYo.GenshinImpact ];
then
echo "skipped"
else
rm -rf Android/data/*mi*/
rm -rf Android/data/*lenovo*/
rm -rf Android/data/*snssdk*/
rm -rf Android/data/*facebook*/
rm -rf Android/data/*tutotoons*/
rm -rf Android/data/*mind*/
rm -rf Android/data/*UCMobile*/
rm -rf Android/data/*babe*/
rm -rf Android/data/*group*/
rm -rf Android/data/*care*/
fi

#testing 
rm -rf Android/data/*Music*/
rm -rf Android/data/*music*/

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
find WhatsApp/ -depth -name "*Shared*" -type d -exec rm -rf "{}" \; 
find WhatsApp/ -depth -name "*Thumbs*" -type d -exec rm -rf "{}" \; 
find WhatsApp/ -depth -name "*trash*" -type d -exec rm -rf "{}" \; 
find WhatsApp/ -depth -name "*Backups*" -type d -exec rm -rf "{}" \; 
find WhatsApp/ -depth -name "*Databases*" -type d -exec rm -rf "{}" \;

echo "moar cleaning unecessery"

# delete file kosong
find Android/ -depth -type d -empty -exec rmdir {} \;
find . -depth -type d -empty -exec rmdir {} \;

# re-emplement empty folder cleaning for bash old version
# based https://unix.stackexchange.com/a/241211
find . -type d -depth -exec rmdir {} + 2>/dev/null

#log & more
find . -depth -name "*log*" -type d -exec rm -rf "{}" \;
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

echo "membersihkan telegram"

#original telegram cleaner
rm -f Telegram/*.apk
rm -f Telegram/*.mp4
rm -f Telegram/*.jpg
rm -f Telegram/*.oga
rm -f Telegram/*.pdf
rm -f Telegram/*.flac
rm -f Telegram/*.ehi
rm -f Telegram/*.txt
rm -f Telegram/*.png
rm -f Telegram/*.sh
rm -f Telegram/*.zip
rm -f Telegram/*.mp3
rm -rf Android/data/org.telegram.messenger/cache 2>/dev/null

#neko X 
rm -rf Android/data/nekox.messanger/files/caches 2>/dev/null
rm -f Android/data/nekox.messanger/files/*.apk
rm -f Android/data/nekox.messanger/files/*.mp4
rm -f Android/data/nekox.messanger/files/*.ehi
rm -f Android/data/nekox.messanger/files/*.jpg
rm -f Android/data/nekox.messanger/files/*.oga
rm -f Android/data/nekox.messanger/files/*.pdf
rm -f Android/data/nekox.messanger/files/*.flac
rm -f Android/data/nekox.messanger/files/*.txt
rm -f Android/data/nekox.messanger/files/*.png
rm -f Android/data/nekox.messanger/files/*.sh
rm -f Android/data/nekox.messanger/files/*.zip
rm -f Android/data/nekox.messanger/files/*.mp3

# telegram x cleaner
rm -f 
rm -f Android/data/org.thunderdog.challegram/*.apk
rm -f Android/data/org.thunderdog.challegram/*.mp4
rm -f Android/data/org.thunderdog.challegram/*.ehi
rm -f Android/data/org.thunderdog.challegram/*.jpg
rm -f Android/data/org.thunderdog.challegram/*.oga
rm -f Android/data/org.thunderdog.challegram/*.pdf
rm -f Android/data/org.thunderdog.challegram/*.flac
rm -f Android/data/org.thunderdog.challegram/*.txt
rm -f Android/data/org.thunderdog.challegram/*.png
rm -f Android/data/org.thunderdog.challegram/*.sh
rm -f Android/data/org.thunderdog.challegram/*.zip
rm -f Android/data/org.thunderdog.challegram/*.mp3
rm -rf Android/data/org.thunderdog.challegram/cache 2>/dev/null

# telegram X issue 
# i found this issue when i workaround this script
# so i recreate again this folder to fix that
#added if function because it will remake the folder 

if [ -d Android/data/org.thunderdog.challegram/files ];
then 
    echo
    else
    mkdir Android/data/org.thunderdog.challegram/files/animations 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/documents 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/music 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/photos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/temp 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/video_notes 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/videos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/voice 2>/dev/null
fi

# if you have secoundary account telegram x
if [ -d Android/data/org.thunderdog.challegram/files/x_account1 ];
then 
    echo
    else
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/animations 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/documents 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/music 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/photos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/temp 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/video_notes 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/videos 2>/dev/null
    mkdir Android/data/org.thunderdog.challegram/files/x_account1/voice 2>/dev/null
fi

# some yeah for MIUI
rm dctp 2>/dev/null
rm did 2>/dev/null

if [[ -d MIUI/theme ]];
then
     echo "cannot removed"
     else
     rm -rf MIUI/
fi

# root side 
# please running on root access

# cleaning data
if [ -d /data ];
then
      echo "pembersihan sampah data"
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

# related https://github.com/bromite/bromite/issues/873
# fixed on Lineage os but seems it's problem from chromium side https://review.lineageos.org/c/LineageOS/android_external_chromium-webview/+/298862/1/patches/no-persistent-histograms.patch#1

#find /data/user/ -depth -name "*BrowserMetrics*" -type d -exec rm -rf "{}" \; 2>/dev/null

echo "pembersihan selesai"