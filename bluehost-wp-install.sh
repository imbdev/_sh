#!/bin/bash

pwd
read -p "PLEASE Verify Folder You Are Installing WP (y or n): " decision

if [ $decision == "y" ] 
then


url=`cat ./config | grep dns | awk -F '=' '{print $2}'`
database=`cat ./config | grep database | awk -F '=' '{print $2}'`
dbuser=`cat ./config | grep dbuser | awk -F '=' '{print $2}'`
dbpass=`cat ./config | grep dbpass | awk -F '=' '{print $2}'`
title=`cat ./config | grep title | awk -F '=' '{print $2}'`
admin=`cat ./config | grep siteadmin | awk -F '=' '{print $2}'`
email=`cat ./config | grep email | awk -F '=' '{print $2}'`
password=`cat ./config | grep password | awk -F '=' '{print $2}'`

wp core download
wp core config --dbname=$database --dbuser=$dbuser --dbpass=$dbpass --dbhost=localhost
wp core install --url=$url --title=$title --admin_user=$admin --admin_email=$email --admin_password=$password 
wp option set blog_public 0
wp core version
wp plugin list
wp theme list


else

echo "RUN SCRIPT AGAIN in The Correct Folder"

fi

