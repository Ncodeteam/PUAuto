#!/bin/bash
#Narima Script 99.99
#changelog
# a).just added
# just a note i not responsible if you found this script to make something illegal 
# so don't report me as author on this script

clear
echo "==================================="
echo -e "2.2 PUBG INSTALLER CONFIG & BOOSTER"
echo -e "created by nekaru"
echo -e "last version"
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
echo -e "c).disable function since 1.3 pubg already no longer work"
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
echo "pembersihan telah selesai"
sleep 5
clear

# destroy pubg config folder
# why i destroy since 1.3 pubg no longer work then why i maintained this script again
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
     sleep 3
     clear
     echo "Thx To for using this script"
     echo "this script now only removed a Config folder since 1.3 pubg no longer work"
     sleep 5
     clear
fi
