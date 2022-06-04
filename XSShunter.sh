#!/bin/bash

# usage ./XSS.sh <URL>
# Remember this must run as root 
# This will only work on https target running on port 443 not http targets running on port 80
# make sure to have python3 and Go installed
# run on kali or a linux OS 

TARGET=$1
PRAMETER=$1


echo "updating please wait....."
sleep 1 
echo "  Add password"
sudo apt update 
sudo apt upgrade 
echo "Done"
sleep 1

clear 
sleep 1
echo '
 
____  ___  _________ _________.__                  __                
\   \/  / /   _____//   _____/|  |__  __ __  _____/  |_  ___________ 
 \     /  \_____  \ \_____  \ |  |  \|  |  \/    \   __\/ __ \_  __ \
 /     \  /        \/        \|   Y  \  |  /   |  \  | \  ___/|  | \/
/___/\  \/_______  /_______  /|___|  /____/|___|  /__|  \___  >__|   
      \_/        \/        \/      \/           \/          \/ 
 "Simple XSS bash script full of oneliners ect :)"   
      Coded by c0ffeeAddict0veride                                       
                                                     
'

sleep 2 

echo "Running XSStrike" 
#commands one
cd XSStrike
python3 xsstrike.py -u https://$TARGET --crawl
sleep 1
echo "Done with Crawl now running Fuzzer"
read -p 'Add Prameter if you dont have one skip:' PRAMETER
sleep 1
python3 xsstrike.py -u https://$TARGET/$PRAMETER --fuzzer
cd
sleep 1
echo "Done"
sleep 1
read -p 'Look over data press enter to continue'
sleep 1
clear 
echo "Running xsser"
read -p 'Add Prameter if you dont have one skip:' PRAMETER
xsser https://$TARGET/$PRAMETER
sleep 1
xsser -u https://$TARGET/XSS  
sleep 1
read -p 'Look over data press enter to continue' 
clear
sleep 1
echo "Running ffuf"
sleep 1
ffuf -w xss-payload-list.txt -u https://$TAREGT/FUZZ/ 
sleep 1 
read -p 'Look over data press enter to continue' 
clear
sleep 1
echo "JS files that might have some nice little XSS bugs in" 
sleep 1
waybackurls $TARGET | grep "\\.js" | xargs -n1 -I@ curl -k @
sleep 1 
read -p 'Look over data press enter to continue' 
clear 
echo "Done hope you enjoyed :) cya"
sleep 1
done 
