#!/bin/bash
read -p "Insert Client Name: " url
temp=`echo $url | awk -F '.' '{print $1}'`
echo $temp
dbext="_db"
database=$temp$dbext
title=`echo $url | awk '{print toupper($0)}'`
adminpass="sCcxj9O6rAgIJhatojiMyxUy1s"

dnsExt=".local"
echo dns=$url$dnsExt 
echo database=$database 
echo title=$title 
echo admin=cgteam 
echo email=support@cyberizegroup.com 
echo password=$adminpass 

read -p "PLEASE VERIFY CONFIG (y or n): " decision

if [ $decision == "y" ] 
then

echo dns=$url$dnsExt > config
echo database=$database >> config
echo title=$title >> config
echo admin=cgteam >> config
echo email=support@cyberizegroup.com >> config
echo password=$adminpass >> config

echo "FINAL CONFIG CONTENT"
cat ./config

else

echo "RUN SCRIPT AGAIN"

fi
