#!/bin/bash

pwd
read -p "PLEASE Verify This Folder is The SOURCE Folder You Are Cloning (y or n): " decision

if [ $decision == "y" ] 
then

read -p "Please Insert Target ABS Path:" target_dir
source_dir=`pwd`

echo "==========================================="
echo "SOURCE PATH: " $source_dir
echo "TARGET PATH: " $target_dir
echo "==========================================="

source_site_url=`wp db query "SELECT option_value FROM wp_options WHERE option_name='siteurl';" | grep http | awk -F "/" '{print $3}'`

cd $target_dir
pwd
target_site_url=`wp db query "SELECT option_value FROM wp_options WHERE option_name='siteurl';" | grep http | awk -F "/" '{print $3}'`

echo "==========================================="
echo "SOURCE URL: " $source_site_url
echo "TARGET URL: " $target_site_url
echo "==========================================="

cd $source_dir
pwd

echo COPYING WP-CONTENT
echo "==========================================="

pwd
cp -r ./wp-content $target_dir

if [ $? -ne 0 ] 
then
echo "wp-content COPY FAILED!!"; exit;
fi
echo "==========================================="
echo "COPYING WP-CONTENT SUCCESSFUL"
echo "==========================================="

echo "SHOWING TABLE FOR $source_site_url"
echo "==========================================="
wp db query "show tables;"

db_file_name=source_db.sql
echo "==========================================="
echo "EXPORTING SOURCE DB To TARGET"
echo "==========================================="
wp db export $target_dir/$db_file_name

if [ $? -ne 0 ]
then
echo "DB EXPORT FAILED!!"; exit;
fi
echo "==========================================="
echo "DB EXPORT SUCCESSFUL"
echo "==========================================="

cd $target_dir
echo "==========================================="
echo "Switching to Target Folder"
echo "==========================================="
pwd


echo "==========================================="
echo "SHOWING TABLE FOR $target_site_url"
echo "==========================================="
wp db query "show tables;"

wp db reset --yes
echo "==========================================="
echo "IMPORTING SOURCE DB"
echo "==========================================="
wp db import ./$db_file_name

if [ $? -ne 0 ]
then
echo "DB IMPORT FAILED!!"; exit;
fi
echo "==========================================="
echo "DB IMPORT SUCCESSFUL"
echo "==========================================="

echo "Updating the Target URL"
wp search-replace $source_site_url $target_site_url


echo "==========================================="
echo "Updating Permalinks"
echo "==========================================="
wp rewrite structure /%postname%/



else

echo "RUN SCRIPT AGAIN in The Correct Folder"

fi

































