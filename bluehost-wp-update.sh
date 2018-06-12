#!/bin/bash
#dirs=`ls -ltr | grep dr grep -v trin | awk '{print $9}'`;
dirs=`ls -ltr public_html | grep drw | grep -v trin | grep -v _ | awk '{print $9}'`

cd public_html;

for dir in $dirs; 

do
echo $dir; 
#wp plugin list;
abs_dir=`readlink -f $dir`
echo $abs_dir;
#cd $abs_dir;
echo "=========================="; 
echo "WP Version Before Update"
echo "=========================="; 
wp core version --path=$abs_dir
wp core update --path=$abs_dir
wp core update-db --path=$abs_dir
echo "=========================="; 
echo "WP Version After Update"
echo "=========================="; 
wp core version --path=$abs_dir
wp plugin update --path=$abs_dir --all
wp plugin list --path=$abs_dir
echo "=========================="; 

done


