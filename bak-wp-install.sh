#!/bin/bash

url=`cat ./config | grep dns | awk -F '=' '{print $2}'`
database=`cat ./config | grep database | awk -F '=' '{print $2}'`
title=`cat ./config | grep title | awk -F '=' '{print $2}'`
admin=`cat ./config | grep admin | awk -F '=' '{print $2}'`
email=`cat ./config | grep email | awk -F '=' '{print $2}'`
password=`cat ./config | grep password | awk -F '=' '{print $2}'`

wp core download
wp core config --dbname=$database --dbuser=root --dbpass=root --dbhost=localhost
wp db drop --yes 2>/dev/null
sleep 3
wp db create
wp core install --url=$url --title=$title --admin_user=$admin --admin_email=$email --admin_password=$password 
wp option set blog_public 0
wp core version
wp plugin list
wp theme list


