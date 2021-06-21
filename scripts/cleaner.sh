#!/bin/bash
#forked from PUAuto

#for fix some annoying
#pembersih
echo "Cleaner Extreme V1.0"
sleep 5
clear
echo "cleaner berjalan......"
sleep 5
clear
#reworked
find /storage/emulated/0/ -type d \( -name "*log*" -o -name "*thumbnails*" -o -name "cache" -o -name "*joox*" -o -name "*miniplay*" -o -name "*SHAREit*" -o -name "*Browser*" -o -name "*mtklog*" -o -name "*oppo_log*" -o -name "*ColorOS*" -name "*LOST.DIR*" -o -name "*found000*" -o -name "*albumthumbs*" -o -name "*Backucup*" -o -name "*wlan_logs*" -o -name "*ramdump*" -o -name "UnityAdsVideoCache" -o -name "shading_otp" -o -name "*vpn*" \) -exec rm -rf "{}" \; 2>/dev/null

find /storage/emulated/0/ -type f \( -iname \*.log -o -iname \*.CHK -o -iname \*.bak -o -iname \*.apk -o -iname \*.iacovnfld \) -exec rm -f {} \; 2>/dev/null

#vendor hape
echo "hapus vendor folder hape"
sleep 5
find Android/data -type d \( -name "*xiaomi*" -o -name "*miui*" -o -name "*nearme*" -o -name "*coloros*" -o -name "*oppo*" -o -name "*opera*" -o -name "*MusicApp*" -o -name "*google*" -o -name "com.android*" -o -name "*spotify*" -o -name "*music*" -o -name "*Music*" -name "*lenovo*" -o -name "*snssdk*" -o -name "*facebook*" -o -name "*mind*" -o -name "*UCMobile*" -o -name "*babe*" -o -name "*group*" -o -name "*care*" -o -name "cache" -o -name "*thumbnails*" -o -name "thumbs" \) -exec rm -rf "{}" \; 2>/dev/null
# rm -rf Android/data/*mi/
clear

# khusus whatsapp
echo "hapus whatsapp useless folder"
sleep 5
find /storage/emulated/0/WhatsApp/ -type d \( -name "*Shared*" -o -name "*Thumbs*" -o -name "*trash*" -o -name "*Backups*" -o -name "*Backups*" -o -name "*Databases*" \) -exec rm -rf "{}" \; 2>/dev/null
clear
echo "moar cleaning unecessery"

#####################################################
############ O L D S T U F F START #####################
######################################################
# delete file kosong
find Android/ -depth -type d -empty -exec rmdir {} \;
find . -depth -type d -empty -exec rmdir {} \;

# re-emplement empty folder cleaning for bash old version
# based https://unix.stackexchange.com/a/241211
find . -type d -depth -exec rmdir {} + 2>/dev/null

# nomedia yang berarti akan membuat semua yang gk ingin dibaca galeri akhirnya terbaca
# due to privacy issue i removed
# find . -type f -name "*nomedia*" -exec rm -f {} \;

######################################################
#================= O L D S T U F F END =====================#
######################################################
echo "membersihkan telegram"
sleep 5

# simple telegram
find /storage/emulated/0/Telegram/ -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.apk -o -iname \*.mp4 -o -iname \*.oga -o -iname \*.pdf -o -iname \*.7zip -o -iname \*.m4a -o -iname \*.rar -o -iname \*.flac -o -iname \*.txt -o -iname \*.sh -o -iname \*.zip -o -iname \*.mp3 \) -exec rm -f {} \; 2>/dev/null
rm -rf Android/data/org.telegram.messenger/cache 2>/dev/null

#neko X
rm -rf Android/data/nekox.messenger/files/caches 2>/dev/null
find Android/data/nekox.messenger/files -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.apk -o -iname \*.mp4 -o -iname \*.oga -o -iname \*.pdf -o -iname \*.7zip -o -iname \*.m4a -o -iname \*.rar -o -iname \*.flac -o -iname \*.txt -o -iname \*.sh -o -iname \*.zip -o -iname \*.mp3 \) -exec rm -f {} \; 2>/dev/null

# telegram x cleaner
find Android/data/org.thunderdog.challegram/ -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.apk -o -iname \*.mp4 -o -iname \*.oga -o -iname \*.pdf -o -iname \*.7zip -o -iname \*.m4a -o -iname \*.rar -o -iname \*.flac -o -iname \*.txt -o -iname \*.sh -o -iname \*.zip -o -iname \*.mp3 \) -exec rm -f {} \; 2>/dev/null
rm -rf Android/data/org.thunderdog.challegram/cache 2>/dev/null

# some yeah for MIUI
rm dctp && rm did 2>/dev/null

#miui simple advanced way
find /storage/emulated/0/MIUI/ -type d \( -name "*debug_log*" -o -name "*config*" -o -name "*Gallery*" -o -name "*snapshot*" -o -name "*cache*" \) -exec rm -rf "{}" \; 2>/dev/null
clear

# root side
# please running on root access

# cleaning data
if [ -d /data ]; then
	echo "pembersihan sampah data"
	sleep 5
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
	rm -f /data/local/*.txt 2>/dev/null
	rm -f /data/local/tmp/* 2>/dev/null
	rm -f /data/last_alog/*.log 2>/dev/null
	rm -f /data/last_alog/*.txt 2>/dev/null
	rm -f /data/last_kmsg/*.log 2>/dev/null
	rm -f /data/last_kmsg/*.txt
	rm -f /data/mlog/* 2>/dev/null
	rm -f /data/system/*.log 2>/dev/null
	rm -f /data/system/*.txt 2>/dev/null
	rm -f /data/system/dropbox/* 2>/dev/null
	rm -rf /data/system/usagestats/* 2>/dev/null
	rm -f /data/system/shared_prefs/* 2>/dev/null
	rm -f /data/tombstones/* 2>/dev/null
	rm -f /storage/emulated/0/*.log 2>/dev/null
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
	clear
fi

#fstrim
fstrim -v /data 2>/dev/null
fstrim -v /cache 2>/dev/null
fstrim -v /system 2>/dev/null
fstrim -v /vendor 2>/dev/null
fstrim -v /product 2>/dev/null

# make your android optimize
free | awk '/Mem/{print "sisa memori dulu : "$4/1024" MB";}'
#cmd package bg-dexopt-job 
echo "3" > /proc/sys/vm/drop_caches

free | awk '/Mem/{print "sisa memori sekarang  : "$4/1024" MB";}'

# reworked
rm -rf /storage/emulated/0/.CacheOfEUI && rm -rf /storage/emulated/0/.bstats && rm -rf /storage/emulated/0/.taobao && rm -rf /storage/emulated/0/.um && rm -rf /storage/emulated/0/.uxx 2>/dev/null

# my friend has reported some annoying folder call "browsermetrics"
# so i make it to force to delete them

# related https://github.com/bromite/bromite/issues/873
# fixed on Lineage os but seems it's problem from chromium side https://review.lineageos.org/c/LineageOS/android_external_chromium-webview/+/298862/1/patches/no-persistent-histograms.patch#1

find /data/user/ -depth -name "*BrowserMetrics*" -type d -exec rm -rf "{}" \; 2>/dev/null

echo "pembersihan selesai"
