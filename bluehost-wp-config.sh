#!/bin/bash
read -p "Insert Client Name: " name
temp=".devhtmlfive.com"
url=$name$temp
dbtext1="devhtmlf_"
dbtext2="_db"
database=$dbtext1$name$dbtext2
title=`echo $url | awk '{print toupper($0)}'`

echo dns=$url 
echo database=$database 
echo dbpass="Keya5392"
echo dbuser="devhtmlf_wpadmin"
echo title=$title 
echo siteadmin="imbteam" 
echo email="wecare@inspiredmommyboss.com" 
echo password="P@ssw0rd123P@ssw0rd123" 

read -p "PLEASE VERIFY CONFIG (y or n): " decision

if [ $decision == "y" ] 
then

echo dns=$url > config
echo database=$database >> config
echo dbpass="Keya5392" >> config
echo dbuser="devhtmlf_wpadmin" >> config
echo title=$title >> config
echo siteadmin=imbteam >> config
echo email=wecare@inspiredmommyboss.com >> config
echo password="P@ssw0rd123P@ssw0rd123" >> config

echo "FINAL CONFIG CONTENT"
cat ./config

else

echo "RUN SCRIPT AGAIN"

fi


