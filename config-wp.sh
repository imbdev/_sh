#!/bin/bash
read -p "Insert Site URL: " url
temp=`echo $url | awk -F '.' '{print $1}'`
echo $temp
dbext="_db"
database=$temp$dbext
title=`echo $url | awk '{print toupper($0)}'`
adminpass="P@ssw0rdP@ssw0rd"

echo dns=$url 
echo database=$database 
echo title=$title 
echo admin=omenteam 
echo email=support@omeninteractive.com 
echo password=$adminpass 

read -p "PLEASE VERIFY CONFIG (y or n): " decision

if [ $decision == "y" ] 
then

echo dns=$url > config
echo database=$database >> config
echo title=$title >> config
echo admin=omenteam >> config
echo email=support@omeninteractive.com >> config
echo password=$adminpass >> config

echo "FINAL CONFIG CONTENT"
cat ./config

else

echo "RUN SCRIPT AGAIN"

fi
