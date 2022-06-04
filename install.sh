#!/bin/bash

echo "Make sure your rooted and have Go installed (https://www.youtube.com/watch?v=dr2Wo7qETZ8)"

sleep 1
git clone https://github.com/s0md3v/XSStrike.git
cd XSStrike
pip3 install -r requirements.txt
cd 

sleep 1 

clear 

sudo apt install xsser
sudo apt install ffuf
sleep 1 
go get github.com/tomnomnom/waybackurls
cp /root/go/bin/waybackurls /usr/local/go/bin/


echo "Done"
sleep 1
clear 
echo "ignore this https://pastebin.com/ZbmGyXRj "


