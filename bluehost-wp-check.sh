#!/bin/bash
dirs=`ls -ltr public_html | grep drw | grep -v trin | grep -v _ | awk '{print $9}'`

cd public_html;

echo "List of NON WP Folders" > EMPTY_FOLDER_LIST 
echo "List of  LIVE WP Folders" > WP_LIVE_LIST 

for dir in $dirs; 
do 

echo $dir; 

echo $HOSTNAME
abs_dir=`readlink -f $dir`
echo $abs_dir;
echo "WordPress Version" 
wp core version --path=$abs_dir 2>/dev/null
if [ $? -eq 1 ] 
then
	echo "FOLDER EMPLTY"
	echo $dir >> EMPTY_FOLDER_LIST

else
	echo $dir >> WP_LIVE_LIST	
fi
echo "=========================="; 

done

cat ./EMPTY_FOLDER_LIST
count=`cat EMPTY_FOLDER_LIST | wc -l`
let total=$count-1;
echo "=========================="; 
echo "Total: " $total
echo "=========================="; 

cat ./WP_LIVE_LIST
count=`cat WP_LIVE_LIST | wc -l`
let total=$count-1;
echo "=========================="; 
echo "Total: " $total
echo "=========================="; 

var=`cat WP_LIVE_LIST | grep -v List`
home_dir=`pwd`
for dir in $var; do  cd $dir; pwd; wp core version; cd $home_dir ; done
