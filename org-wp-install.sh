#!/bin/bash
#read -p "Insert DB Name: " database
database=`cat /Users/shourav/_sh/config | grep database | awk -F '=' '{print $2}'`
url=`cat /Users/shourav/_sh/config | grep url | awk -F '=' '{print $2}'`
title=`cat /Users/shourav/_sh/config | grep title | awk -F '=' '{print $2}'`
admin=`cat /Users/shourav/_sh/config | grep admin | awk -F '=' '{print $2}'`
email=`cat /Users/shourav/_sh/config | grep email | awk -F '=' '{print $2}'`
password=`cat /Users/shourav/_sh/config | grep password | awk -F '=' '{print $2}'`

wp core download
wp core config --dbname=$database --dbuser=root --dbpass=root --dbhost=localhost
wp db create
wp core install --url=$url --title=$title --admin_user=$admin --admin_email=$email --admin_password=$password 
wp core version
wp plugin list
wp theme list


