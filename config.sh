#!/bin/bash
#Narima Script 2.3
#changelog
# a).just added
# just a note i not responsible if you found this script to make something illegal
# so don't report me as author on this script

clear
echo "==================================="
echo -e "2.3 PUBG INSTALLER CONFIG & BOOSTER"
echo -e "created by nekaru"
echo -e "note : jika kamu terkena banned jangan pernah salahkan installer ini"
echo -e "resiko ditannggung sendiri"
echo "==================================="
sleep 5
echo "menuju tkp"
sleep 2
clear

# cangluk
echo -e "========================================="
echo -e "changelog"
echo -e "a).Reworked Script to activate again"
echo -e "b).Make a easier method"
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
# reworked engine bash for pubg mobile global and korean
find /storage/emulated/0/Android/data/com.tencent.ig -type d \( -name "*TGPA*" -o -name "*ProgramBinaryCache*" -o -name "*cache*" -o -name "*Logs*" -o -name "*Pandora*" -o -name "*LightData*" -o -name "*GameErrorNoRecords*" -o -name "*StatEventReportedFlag*" -o -name "*PufferEifs0*" -o -name "*PufferEifs1*" \) -exec rm -rf "{}" \;  2>/dev/null
rm Android/data/com.tencent.ig/files/cacheFile.txt 2>/dev/null

find /storage/emulated/0/Android/data/com.pubg.krmobile -type d \( -name "*TGPA*" -o -name "*ProgramBinaryCache*" -o -name "*cache*" -o -name "*Logs*" -o -name "*Pandora*" -o -name "*LightData*" -o -name "*GameErrorNoRecords*" -o -name "*StatEventReportedFlag*" -o -name "*PufferEifs0*" -o -name "*PufferEifs1*" \) -exec rm -rf "{}" \;  2>/dev/null
rm Android/data/com.pubg.krmobile/files/cacheFile.txt 2>/dev/null
sleep 1
echo -ne '======================   (100%)\r'
echo -ne '\n'
echo "pembersihan telah selesai saat nya memasang"
sleep 5
clear


# reworked for pak and enjoy

# installer simple for pubg since i dont want any complex INSTALLER
if [-d Android/data/com.tencent.ig ];
then
echo "installing....."
find /storage/emulated/0/Download/ -name '*.pak' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/ \;
find /storage/emulated/0/ -name '*.cache' -exec cp "{}" Android/data/com.tencent.ig/files/ \;
find /storage/emulated/0/ -name '*EnjoyCJZC*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ \;
find /storage/emulated/0/ -name '*GameUserSettings*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ \;
echo "done!"
fi
