#!/bin/bash
read -p "Insert Site URL: " url
temp=`echo $url | awk -F '.' '{print $1}'`
echo $temp
dbext="_db"
database=$temp$dbext
title=`echo $url | awk '{print toupper($0)}'`


echo url=$url
echo database=$database
echo title=$title
echo admin=imbteam
echo email=wecare@inspiredmommyboss.com
echo password=imbteam

